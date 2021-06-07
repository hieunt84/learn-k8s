## ref https://blog.vietnamlab.vn/nhap-mon-kubernetes-p3-rancher-2-0-kien-truc-k8s/
## setup v2.4.5 ok
- admin/Password@2021

kubectl apply -f https://172.16.10.103/v3/import/8s59kgz6q5dhp8sktcqpjjhq7tgg66n8sxg7gbv6p8gr7mkd4jbdg5.yaml

curl --insecure -sfL https://172.16.10.103/v3/import/8s59kgz6q5dhp8sktcqpjjhq7tgg66n8sxg7gbv6p8gr7mkd4jbdg5.yaml | kubectl apply -f -