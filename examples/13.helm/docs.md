### Ref:
```
- https://blog.vietnamlab.vn/helm-package-manager-cho-kuber/
- https://www.baeldung.com/ops/kubernetes-helm
- https://viblo.asia/p/helm-la-gi-no-co-lien-quan-gi-den-series-nay-Do754oAQlM6#_deploy-example-project-chart-8
- https://helm.sh/docs/intro/quickstart/
```

## Deploy app wordpress from repo bitnami
1. add hub/repository
helm repo add bitnami https://charts.bitnami.com/bitnami

2. check repo
helm repo ls

3. update repo
helm repo update

4. install app wordpress
helm search repo bitnami/wordpress
helm install happy-panda bitnami/wordpress

5. check status app
helm status happy-panda

## Check app đã deploy
helm ls

6. Enable ingress on minikube
ref https://kubernetes.io/docs/tasks/access-application-cluster/ingress-minikube/
minikube addons enable ingress
kubectl get ns

7. Modified hosts file
192.168.99.100 happyit.test

8. Testing
curl happyit.test

9. update myrelease
helm update myrelease bitnami/wordpress -f values.yaml