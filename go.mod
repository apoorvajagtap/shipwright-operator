module github.com/shipwright-io/operator

go 1.15

require (
	github.com/go-logr/logr v0.4.0
	github.com/manifestival/controller-runtime-client v0.4.0
	github.com/manifestival/manifestival v0.7.0
	github.com/onsi/ginkgo v1.14.1
	github.com/onsi/gomega v1.10.3
	github.com/tektoncd/operator v0.49.0
	k8s.io/api v0.20.2
	k8s.io/apiextensions-apiserver v0.20.2
	k8s.io/apimachinery v0.20.2
	k8s.io/client-go v0.20.2
	sigs.k8s.io/controller-runtime v0.8.3
)

// github.com/manifestival/controller-runtime-client v0.4.0 depends on
// github.com/manifestival/manifestival v0.6.0, which in turn depends on
// k8s.io/client-go v0.15.7. This is not compatible with v0.20.2 and leads to transitive
// dependency hell. Pinning k8s.io/client-go to the version shared by controller-runtime and
// the latest version of manifestival
replace k8s.io/client-go => k8s.io/client-go v0.20.2
