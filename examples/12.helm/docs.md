Ref:
- https://blog.vietnamlab.vn/helm-package-manager-cho-kuber/
- https://www.baeldung.com/ops/kubernetes-helm
- https://viblo.asia/p/helm-la-gi-no-co-lien-quan-gi-den-series-nay-Do754oAQlM6#_deploy-example-project-chart-8
- https://helm.sh/docs/intro/quickstart/

## Deploy app from repo
1. add hub/repository
- có nhiều repo trên khắp thế giới

ref: https://artifacthub.io/packages/helm/artifact-hub/artifact-hub
helm repo add artifact-hub https://artifacthub.github.io/hub/chart
helm install hub artifact-hub/artifact-hub

helm repo add stable https://charts.helm.sh/stable

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