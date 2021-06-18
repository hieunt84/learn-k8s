### Powershell:
    while (1) {kubectl get all -o wide;sleep 3;cls}
---
### 18/06/2021:
    minikube start --cpus 8 --memory 16000
    kubectl -n cattle-system rollout status deploy/rancher
    

