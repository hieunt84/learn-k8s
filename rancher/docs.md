### What is Rancher ?
    -Rancher is open source software that combines everything an organization needs to adopt and run containers in production. 
    -Built on Kubernetes, Rancher makes it easy for DevOps teams to test, deploy and manage their applications.

### Rancher integrated and combine opensource technology:
    -Docker run container.
    -K8s ochestation container.
    -Terraform provision infastructure.
    -Promethus and Grafana moinitor and arlert.
    -Jenkins buil CI/CD.
    -...    

### Overview Rancher
    
### Tại sao dùng Rancher
    -Rancher là công cụ giúp quản lý môi trường docker rất hiệu quả, mọi thứ sẽ được quản lý qua giao diện web.
    -Làm cho công việc sysadmin/devops trở nên dễ dàng trong việc triển khai và quản lý infastructure.
    -It then enables detailed monitoring and alerting for clusters and their resources, ships logs to external providers, and integrates directly with Helm via the Application Catalog. If you have an external CI/CD system, you can plug it into Rancher, but if you don’t, Rancher even includes a pipeline engine to help you automatically deploy and upgrade workloads.

### Các phần mềm tương đương
    -VMware Tanzu.
    -Redhat Openshif.

### What new rancher 2.5x?
    Ref: https://www.youtube.com/watch?v=jrLkDTtP3U4&t=244s
    Ref: https://rancher.com/products/rancher/2.5

### Get started with Rancher in two easy steps
    Ref: https://rancher.com/quick-start/
    
### setup rancher v2.4.8 on vm using docker
    docker run -d --restart=unless-stopped \
        -p 80:80 -p 443:443 \
        -v /opt/rancher:/var/lib/rancher \
        rancher/rancher:v2.4.8
    
    Note: khi rancher kết nối k8s thì 2 thành phần control-plane and scheduler bị unhealthy
    - điều này là bình thường
    - do rancher v2.4.8 dùng cách kết nối unsecure để lấy thông tin từ k8s, mà k8s đang có kế hoạch     không dùng kết nối này nữa.    
    
    Account quản trị Rancher: admin/Password@2021     

### setup rancher version lastest v2.5.8 on vm using docker
    docker run -d --restart=unless-stopped --privileged \
        -p 80:80 -p 443:443 \
        -v /opt/rancher:/var/lib/rancher \
        rancher/rancher
    
### setup rancher in k8s using helm

### Ref
    https://rancher.com/docs/rancher/v2.5/en/
    https://www.youtube.com/watch?v=AXHyzrTUGX8&t=1197s
    https://www.youtube.com/watch?v=dMhRb4Neg7o
    https://blog.vietnamlab.vn/nhap-mon-kubernetes-p3-rancher-2-0-kien-truc-k8s/
    https://viblo.asia/p/rancher-20-k8s-that-de-dang-OeVKBNXEKkW
    https://www.youtube.com/watch?v=sMSvjz-hyiA

