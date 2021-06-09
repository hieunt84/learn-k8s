## ref https://blog.vietnamlab.vn/nhap-mon-kubernetes-p3-rancher-2-0-kien-truc-k8s/
## setup rancher v2.4.5
docker run -d --restart=unless-stopped \
    -p 80:80 -p 443:443 \
    -v /opt/rancher:/var/lib/rancher \
    rancher/rancher:v2.4.5

Note: khi rancher kết nối k8s thì 2 thành phần control-plane and scheduler bị unhealthy
- điều này là bình thường
- do rancher v2.4.5 dùng cách kết nối unsecure để lấy thông tin từ k8s, mà k8s đang có kế hoạch không dùng kết nối này nữa.

Account quản trị Rancher: admin/Password@2021

Lệnh kết nối để triển khai rancher lên k8s
kubectl apply -f https://172.16.10.103/v3/import/8s59kgz6q5dhp8sktcqpjjhq7tgg66n8sxg7gbv6p8gr7mkd4jbdg5.yaml
curl --insecure -sfL https://172.16.10.103/v3/import/8s59kgz6q5dhp8sktcqpjjhq7tgg66n8sxg7gbv6p8gr7mkd4jbdg5.yaml | 

# setup rancher version lastest v2.5.8
docker run -d --restart=unless-stopped --privileged \
    -p 80:80 -p 443:443 \
    -v /opt/rancher:/var/lib/rancher \
    rancher/rancher:lastest