## Deploy application wordpress from repo bitnami
1. search wordpress on hub
helm search hub wordpress

2. add hub/repository
helm repo add bitnami https

3. check repo
helm repo ls

4. update repo
helm repo update

5. install app wordpress
helm search repo bitnami/wordpress
helm install happy-panda bitnami/wordpress

6. check status app
helm status happy-panda

7. Enable ingress on minikube
minikube addons enable ingress
kubectl get ns ngix-ingress # check ngix đã enabled chưa

8. Modified hosts file
192.168.99.100 happyit.test

9. Testing
curl happyit.test