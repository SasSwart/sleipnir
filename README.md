# Sleipnir

This repo spins up a kind cluster with an nginx ingress controller and an emptry grafana service.

To test it:
* Install kind (see the resources section)
* `make kind_cluster`
* `make kind_deploy`
* Open http://localhost/grafana

# Resources:
* [Kind](https://kind.sigs.k8s.io/)
* [Kind config example](https://raw.githubusercontent.com/kubernetes-sigs/kind/main/site/content/docs/user/kind-example-config.yaml)
* [JSON 6902 patch](https://www.rfc-editor.org/rfc/rfc6902)
* [Creating namespaces](https://kubernetes.io/docs/tasks/administer-cluster/namespaces/)
* [Creating deployments](https://kubernetes.io/docs/concepts/workloads/controllers/deployment/)
* [Grafana Container](https://hub.docker.com/r/grafana/grafana)
* [Creating Services](https://kubernetes.io/docs/concepts/services-networking/service/)
* [Nginx ingress controller](https://kubernetes.github.io/ingress-nginx/deploy/)
* [Kubernetes Jobs](https://kubernetes.io/docs/concepts/workloads/controllers/job/)
* [Kubernetes Ingress](https://kubernetes.io/docs/concepts/services-networking/ingress/)
* [Configuring Grafana in Docker](https://grafana.com/docs/grafana/latest/setup-grafana/configure-grafana/#override-configuration-with-environment-variables)

# Notes
* For Kind, be sure to configure your ingress controller using NodePort, instead of a loadbalancer

# TODO:
* Learn kubeadm config options