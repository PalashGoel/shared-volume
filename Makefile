
image:
	docker build -t shared-volume -f Dockerfile . 

load:
	minikube image load shared-volume:latest

unload:
	minikube image unload shared-volume:latest

create:
	kubectl create -f pod.yaml

delete:
	kubectl delete -f pod.yaml

get:
	kubectl get po shared-volume-pod

describe:
	kubectl describe po shared-volume -pod

exec:
	kubectl exec -it shared-volume-pod -c shared-volume-1 -- sh
	kubectl exec -it shared-volume-pod -c shared-volume-2 -- sh


