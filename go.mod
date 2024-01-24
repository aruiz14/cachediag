module github.com/aruiz14/cachediag

go 1.19

// on release remove this wrangler replace and use the latest tag
replace github.com/rancher/wrangler v1.1.1 => github.com/rancher/wrangler v1.1.1-0.20230705223603-201b4da5bdaf

replace (
	// See https://github.com/rancher/lasso/pull/57
	// go mod edit -replace=github.com/rancher/lasso=github.com/aruiz14/lasso@decorate-cache-memory-profile
	github.com/rancher/lasso => github.com/aruiz14/lasso v0.0.0-20240118142830-5a0b7b270c6e
	github.com/rancher/rancher => github.com/rancher/rancher v0.0.0-20240119084154-cef8549729a2
	github.com/rancher/rancher/pkg/apis => github.com/rancher/rancher/pkg/apis v0.0.0-20240119084154-cef8549729a2
	github.com/rancher/rancher/pkg/client => github.com/rancher/rancher/pkg/client v0.0.0-20240119084154-cef8549729a2
)

replace (
	k8s.io/api => k8s.io/api v0.25.12
	k8s.io/apiextensions-apiserver => k8s.io/apiextensions-apiserver v0.25.12
	k8s.io/apimachinery => k8s.io/apimachinery v0.25.12
	k8s.io/apiserver => k8s.io/apiserver v0.25.12
	k8s.io/cli-runtime => k8s.io/cli-runtime v0.25.12
	k8s.io/client-go => github.com/rancher/client-go v1.25.4-rancher1
	k8s.io/cloud-provider => k8s.io/cloud-provider v0.25.12
	k8s.io/cluster-bootstrap => k8s.io/cluster-bootstrap v0.25.12
	k8s.io/code-generator => k8s.io/code-generator v0.25.12
	k8s.io/component-base => k8s.io/component-base v0.25.12
	k8s.io/component-helpers => k8s.io/component-helpers v0.25.12
	k8s.io/controller-manager => k8s.io/controller-manager v0.25.12
	k8s.io/cri-api => k8s.io/cri-api v0.25.12
	k8s.io/csi-translation-lib => k8s.io/csi-translation-lib v0.25.12
	k8s.io/kube-aggregator => k8s.io/kube-aggregator v0.25.12
	k8s.io/kube-controller-manager => k8s.io/kube-controller-manager v0.25.12
	k8s.io/kube-proxy => k8s.io/kube-proxy v0.25.12
	k8s.io/kube-scheduler => k8s.io/kube-scheduler v0.25.12
	k8s.io/kubectl => k8s.io/kubectl v0.25.12
	k8s.io/kubelet => k8s.io/kubelet v0.25.12
	k8s.io/kubernetes => k8s.io/kubernetes v1.25.12
	k8s.io/legacy-cloud-providers => k8s.io/legacy-cloud-providers v0.25.12
	k8s.io/metrics => k8s.io/metrics v0.25.12
	k8s.io/mount-utils => k8s.io/mount-utils v0.25.12
	k8s.io/pod-security-admission => k8s.io/pod-security-admission v0.25.12
	k8s.io/sample-apiserver => k8s.io/sample-apiserver v0.25.12
)

require (
	github.com/Masterminds/semver/v3 v3.2.0 // indirect
	github.com/Masterminds/sprig/v3 v3.2.3 // indirect
	github.com/blang/semver v3.5.1+incompatible // indirect
	github.com/davecgh/go-spew v1.1.1 // indirect
	github.com/docker/distribution v2.8.2+incompatible // indirect
	github.com/docker/docker v23.0.6+incompatible // indirect
	github.com/docker/go-connections v0.4.0 // indirect
	github.com/evanphx/json-patch v4.12.0+incompatible // indirect
	github.com/ghodss/yaml v1.0.0 // indirect
	github.com/go-logr/logr v1.2.4 // indirect
	github.com/golang/protobuf v1.5.3 // indirect
	github.com/google/gnostic v0.5.7-v3refs // indirect
	github.com/gorilla/mux v1.8.0 // indirect
	github.com/gorilla/websocket v1.4.2 // indirect
	github.com/mattn/go-colorable v0.1.13 // indirect
	github.com/moby/locker v1.0.1 // indirect
	github.com/pkg/errors v0.9.1 // indirect
	github.com/prometheus-operator/prometheus-operator/pkg/apis/monitoring v0.52.0 // indirect
	github.com/prometheus/client_golang v1.15.0 // indirect
	github.com/prometheus/client_model v0.3.0 // indirect
	github.com/prometheus/common v0.42.0 // indirect
	github.com/rancher/aks-operator v1.1.3 // indirect
	github.com/rancher/apiserver v0.0.0-20230515173455-c3b182bdbf7d // indirect
	github.com/rancher/eks-operator v1.2.2 // indirect
	github.com/rancher/fleet/pkg/apis v0.0.0-20230821130910-23e1c146755a // indirect
	github.com/rancher/gke-operator v1.1.6 // indirect
	github.com/rancher/lasso v0.0.0-20230629200414-8a54b32e6792
	github.com/rancher/norman v0.0.0-20230426211126-d3552b018687 // indirect
	github.com/rancher/remotedialer v0.2.6-0.20220624190122-ea57207bf2b8 // indirect
	github.com/rancher/rke v1.4.10 // indirect
	github.com/rancher/steve v0.0.0-20230717160251-d040cffef385 // indirect
	github.com/rancher/wrangler v1.1.1
	github.com/sirupsen/logrus v1.9.3 // indirect
	golang.org/x/crypto v0.11.0 // indirect
	golang.org/x/mod v0.10.0 // indirect
	golang.org/x/net v0.12.0 // indirect
	golang.org/x/oauth2 v0.10.0 // indirect
	golang.org/x/sync v0.3.0 // indirect
	golang.org/x/text v0.11.0 // indirect
	golang.org/x/tools v0.9.3 // indirect
	google.golang.org/grpc v1.56.1 // indirect
	gopkg.in/yaml.v2 v2.4.0 // indirect
	helm.sh/helm/v3 v3.9.0 // indirect
	k8s.io/api v0.26.1
	k8s.io/apiextensions-apiserver v0.25.12 // indirect
	k8s.io/apimachinery v0.26.1
	k8s.io/apiserver v0.25.12 // indirect
	k8s.io/cli-runtime v0.25.12 // indirect
	k8s.io/client-go v12.0.0+incompatible // indirect
	k8s.io/gengo v0.0.0-20220902162205-c0856e24416d // indirect
	k8s.io/helm v2.16.7+incompatible // indirect
	k8s.io/kube-aggregator v0.25.12
	k8s.io/kubectl v0.25.12 // indirect
	k8s.io/kubernetes v1.25.12 // indirect
	k8s.io/utils v0.0.0-20230209194617-a36077c30491 // indirect
	sigs.k8s.io/cluster-api v1.2.12 // indirect
	sigs.k8s.io/controller-runtime v0.12.3
	sigs.k8s.io/yaml v1.3.0 // indirect
)

require (
	github.com/rancher/rancher v0.0.0-00010101000000-000000000000
	golang.org/x/exp v0.0.0-20230321023759-10a507213a29
)

require (
	github.com/bugsnag/bugsnag-go v2.1.2+incompatible // indirect
	github.com/bugsnag/panicwrap v0.0.0-20160118154447-aceac81c6e2f // indirect
	github.com/go-sql-driver/mysql v1.7.0 // indirect
	github.com/gofrs/uuid v4.2.0+incompatible // indirect
	github.com/rancher/rancher/pkg/apis v0.0.0 // indirect
	github.com/sergi/go-diff v1.2.0 // indirect
	google.golang.org/genproto/googleapis/rpc v0.0.0-20230629202037-9506855d4529 // indirect
	gotest.tools/v3 v3.4.0 // indirect
)

require (
	github.com/Azure/go-ansiterm v0.0.0-20210617225240-d185dfc1b5a1 // indirect
	github.com/BurntSushi/toml v1.2.1 // indirect
	github.com/MakeNowJust/heredoc v1.0.0 // indirect
	github.com/Masterminds/goutils v1.1.1 // indirect
	github.com/Masterminds/squirrel v1.5.2 // indirect
	github.com/asaskevich/govalidator v0.0.0-20230301143203-a9d515a09cc2 // indirect
	github.com/beorn7/perks v1.0.1 // indirect
	github.com/cespare/xxhash/v2 v2.2.0 // indirect
	github.com/chai2010/gettext-go v1.0.2 // indirect
	github.com/containerd/containerd v1.6.18 // indirect
	github.com/cyphar/filepath-securejoin v0.2.3 // indirect
	github.com/docker/cli v23.0.1+incompatible // indirect
	github.com/docker/docker-credential-helpers v0.7.0 // indirect
	github.com/docker/go-metrics v0.0.1 // indirect
	github.com/docker/go-units v0.5.0 // indirect
	github.com/emicklei/go-restful/v3 v3.10.1 // indirect
	github.com/exponent-io/jsonpath v0.0.0-20151013193312-d6023ce2651d // indirect
	github.com/fatih/color v1.13.0 // indirect
	github.com/fsnotify/fsnotify v1.6.0 // indirect
	github.com/go-errors/errors v1.0.1 // indirect
	github.com/go-gorp/gorp/v3 v3.0.2 // indirect
	github.com/go-openapi/jsonpointer v0.19.6 // indirect
	github.com/go-openapi/jsonreference v0.20.1 // indirect
	github.com/go-openapi/swag v0.22.3 // indirect
	github.com/gobwas/glob v0.2.3 // indirect
	github.com/gogo/protobuf v1.3.2 // indirect
	github.com/golang/groupcache v0.0.0-20210331224755-41bb18bfe9da // indirect
	github.com/google/btree v1.0.1 // indirect
	github.com/google/go-cmp v0.5.9 // indirect
	github.com/google/gofuzz v1.2.0 // indirect
	github.com/google/shlex v0.0.0-20191202100458-e7afc7fbc510 // indirect
	github.com/google/uuid v1.3.0 // indirect
	github.com/gosuri/uitable v0.0.4 // indirect
	github.com/gregjones/httpcache v0.0.0-20190611155906-901d90724c79 // indirect
	github.com/huandu/xstrings v1.3.3 // indirect
	github.com/imdario/mergo v0.3.15 // indirect
	github.com/inconshreveable/mousetrap v1.1.0 // indirect
	github.com/jmoiron/sqlx v1.3.4 // indirect
	github.com/josharian/intern v1.0.0 // indirect
	github.com/json-iterator/go v1.1.12 // indirect
	github.com/klauspost/compress v1.16.3 // indirect
	github.com/lann/builder v0.0.0-20180802200727-47ae307949d0 // indirect
	github.com/lann/ps v0.0.0-20150810152359-62de8c46ede0 // indirect
	github.com/lib/pq v1.10.4 // indirect
	github.com/liggitt/tabwriter v0.0.0-20181228230101-89fcab3d43de // indirect
	github.com/mailru/easyjson v0.7.7 // indirect
	github.com/matryer/moq v0.0.0-20200607124540-4638a53893e6 // indirect
	github.com/mattn/go-isatty v0.0.16 // indirect
	github.com/mattn/go-runewidth v0.0.14 // indirect
	github.com/matttproud/golang_protobuf_extensions v1.0.4 // indirect
	github.com/mitchellh/copystructure v1.2.0 // indirect
	github.com/mitchellh/go-wordwrap v1.0.0 // indirect
	github.com/mitchellh/reflectwalk v1.0.2 // indirect
	github.com/moby/spdystream v0.2.0 // indirect
	github.com/moby/term v0.0.0-20221120202655-abb19827d345 // indirect
	github.com/modern-go/concurrent v0.0.0-20180306012644-bacd9c7ef1dd // indirect
	github.com/modern-go/reflect2 v1.0.2 // indirect
	github.com/monochromegane/go-gitignore v0.0.0-20200626010858-205db1a8cc00 // indirect
	github.com/morikuni/aec v1.0.0 // indirect
	github.com/munnerz/goautoneg v0.0.0-20191010083416-a7dc8b61c822 // indirect
	github.com/opencontainers/go-digest v1.0.0 // indirect
	github.com/opencontainers/image-spec v1.1.0-rc2 // indirect
	github.com/peterbourgon/diskv v2.0.1+incompatible // indirect
	github.com/prometheus/procfs v0.9.0 // indirect
	github.com/rivo/uniseg v0.4.4 // indirect
	github.com/rubenv/sql-migrate v1.1.1 // indirect
	github.com/russross/blackfriday v1.6.0 // indirect
	github.com/shopspring/decimal v1.2.0 // indirect
	github.com/spf13/cast v1.5.0 // indirect
	github.com/spf13/cobra v1.7.0 // indirect
	github.com/spf13/pflag v1.0.5 // indirect
	github.com/xeipuuv/gojsonpointer v0.0.0-20190905194746-02993c407bfb // indirect
	github.com/xeipuuv/gojsonreference v0.0.0-20180127040603-bd5ef7bd5415 // indirect
	github.com/xeipuuv/gojsonschema v1.2.0 // indirect
	github.com/xlab/treeprint v1.1.0 // indirect
	go.starlark.net v0.0.0-20200306205701-8dd3e2ee1dd5 // indirect
	golang.org/x/sys v0.10.0 // indirect
	golang.org/x/term v0.10.0 // indirect
	golang.org/x/time v0.3.0 // indirect
	gomodules.xyz/jsonpatch/v2 v2.2.0 // indirect
	google.golang.org/appengine v1.6.7 // indirect
	google.golang.org/protobuf v1.31.0 // indirect
	gopkg.in/inf.v0 v0.9.1 // indirect
	gopkg.in/yaml.v3 v3.0.1 // indirect
	k8s.io/component-base v0.25.12 // indirect
	k8s.io/klog v1.0.0 // indirect
	k8s.io/klog/v2 v2.90.1 // indirect
	k8s.io/kube-openapi v0.0.0-20230308215209-15aac26d736a // indirect
	oras.land/oras-go v1.1.0 // indirect
	sigs.k8s.io/cli-utils v0.27.0 // indirect
	sigs.k8s.io/json v0.0.0-20221116044647-bc3834ca7abd // indirect
	sigs.k8s.io/kustomize/api v0.12.1 // indirect
	sigs.k8s.io/kustomize/kyaml v0.13.9 // indirect
	sigs.k8s.io/structured-merge-diff/v4 v4.2.3 // indirect
)
