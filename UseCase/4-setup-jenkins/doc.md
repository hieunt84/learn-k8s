## using app catalog rancher, using repo bitnami

### value.yaml
    Name	            Description	                                    Value
    service.type	    Jenkins service type	                        ClusterIP
    ingress.enabled	    Enable ingress record generation for WordPress	true
    ingress.hostname	Default host for the ingress record	            jenkins.local

### helm code
    helm install --generate-name=true --namespace=default --timeout=10m0s --values=/home/shell/helm/values-jenkins-8.0.1.yaml --version=8.0.1 --wait=true /home/shell/helm/jenkins-8.0.1.tgz

### Accout quản trị
    user
