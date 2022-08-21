CLUSTER_NAME := sleipnir
KIND_IMAGE := kindest/node:v1.24.0
KIND_CONFIG := kind.yaml

kind_cluster:
	kind create cluster \
	--name $(CLUSTER_NAME) \
	--image $(KIND_IMAGE) \
	--config $(KIND_CONFIG)

kind_deploy:
	kubectl apply -f manifests/ingress_controller.yaml
	kubectl wait --namespace ingress-nginx \
  	--for=condition=ready pod \
  	--selector=app.kubernetes.io/component=controller \
  	--timeout=300s
	kubectl apply -f manifests/grafana.yaml

clean:
	kind delete cluster --name $(CLUSTER_NAME)