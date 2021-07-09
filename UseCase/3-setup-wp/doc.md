### Intro 
    using app catalog rancher, using repo bitnami

### value.yaml
    Name	            Description	                                      Value
    service.type	    WordPress service type	                      ClusterIP
    ingress.enabled	    Enable ingress record generation for WordPress    true
    ingress.hostname    Default host for the ingress record	              wordpress.local
### Command
    helm install --generate-name=true --namespace=wordpress --timeout=10m0s --values=/home/shell/helm/values-wordpress-11.0.15.yaml --version=11.0.15 --wait=true /home/shell/helm/wordpress-11.0.15.tgz
