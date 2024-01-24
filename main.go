package main

import (
	"context"
	"encoding/json"
	"flag"
	"fmt"
	"log"
	"os"
	"runtime"
	"time"

	"github.com/rancher/rancher/pkg/wrangler"
	"sigs.k8s.io/controller-runtime/pkg/client/config"

	"github.com/rancher/lasso/pkg/cache"
	"github.com/rancher/lasso/pkg/client"
	"github.com/rancher/lasso/pkg/controller"
	"github.com/rancher/wrangler/pkg/signals"
	"golang.org/x/exp/maps"
	corev1 "k8s.io/api/core/v1"
	rbacv1 "k8s.io/api/rbac/v1"
	"k8s.io/apimachinery/pkg/runtime/schema"
	apiregistrationv1 "k8s.io/kube-aggregator/pkg/apis/apiregistration/v1"
)

func main() {
	ctx := signals.SetupSignalContext()
	o := bindFlags(flag.CommandLine)
	flag.Parse()
	if err := run(ctx, o); err != nil {
		log.Fatalf("%+v\n", err)
	}
}

func run(ctx context.Context, o *opts) error {
	cacheFactory, err := createSharedCacheFactory()
	if err != nil {
		return err
	}

	if err := registerInformers(ctx, o.preset, cacheFactory); err != nil {
		return err
	}
	for {
		pending := waitForCaches(ctx, cacheFactory)
		if len(pending) == 0 {
			break
		}
		log.Printf("WARNING: not all caches are synced: %s", pending)
	}

	m := readMemStats()
	return printStats(m)
}

func readMemStats() (m runtime.MemStats) {
	runtime.GC()
	runtime.ReadMemStats(&m)
	return
}

func printStats(m runtime.MemStats) error {
	// FIXME: do something else
	enc := json.NewEncoder(os.Stdout)
	enc.SetIndent("", "  ")
	return enc.Encode(m)
}

func createSharedCacheFactory() (cache.SharedCacheFactory, error) {
	restConfig, err := config.GetConfig()
	if err != nil {
		return nil, fmt.Errorf("getting client config: %w", err)
	}
	clientFactory, err := client.NewSharedClientFactory(restConfig, &client.SharedClientFactoryOptions{
		Scheme: wrangler.Scheme,
	})
	if err != nil {
		return nil, fmt.Errorf("creating shared client factory: %w", err)
	}
	return cache.NewSharedCachedFactory(clientFactory, &cache.SharedCacheFactoryOptions{
		KindNamespace: map[schema.GroupVersionKind]string{},
	}), nil
}

func registerInformers(ctx context.Context, preset string, f cache.SharedCacheFactory) error {
	var kinds []schema.GroupVersionKind
	switch preset {
	case userContextPreset:
		kinds = []schema.GroupVersionKind{
			apiregistrationv1.SchemeGroupVersion.WithKind("APIService"),
			corev1.SchemeGroupVersion.WithKind("ConfigMap"),
			corev1.SchemeGroupVersion.WithKind("LimitRange"),
			corev1.SchemeGroupVersion.WithKind("Namespace"),
			corev1.SchemeGroupVersion.WithKind("Node"),
			corev1.SchemeGroupVersion.WithKind("ResourceQuota"),
			corev1.SchemeGroupVersion.WithKind("Secret"),
			corev1.SchemeGroupVersion.WithKind("ServiceAccount"),
			rbacv1.SchemeGroupVersion.WithKind("ClusterRole"),
			rbacv1.SchemeGroupVersion.WithKind("ClusterRoleBinding"),
			rbacv1.SchemeGroupVersion.WithKind("Role"),
			rbacv1.SchemeGroupVersion.WithKind("RoleBinding"),
		}
	default:
		return fmt.Errorf("unknown preset: %s", preset)
	}

	controllerFactory := controller.NewSharedControllerFactory(f, &controller.SharedControllerFactoryOptions{})
	for _, kind := range kinds {
		if _, err := controllerFactory.ForKind(kind); err != nil {
			return fmt.Errorf("error creating controller for kind %s: %w", kind, err)
		}
	}
	if err := controllerFactory.Start(ctx, 50); err != nil {
		return fmt.Errorf("starting controller factory: %w", err)
	}
	return nil
}

func waitForCaches(ctx context.Context, f cache.SharedCacheFactory) []schema.GroupVersionKind {
	ctx, cancel := context.WithTimeout(ctx, 30*time.Second)
	defer cancel()

	caches := f.WaitForCacheSync(ctx)
	maps.DeleteFunc(caches, func(_ schema.GroupVersionKind, synced bool) bool { return synced })
	return maps.Keys(caches)
}
