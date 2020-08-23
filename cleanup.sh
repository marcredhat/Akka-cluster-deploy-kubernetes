
sudo rm -rf ./Akka-cluster-deploy-kubernetes
oc delete statefulset,svc --all -n akka
oc delete pod -l app=myapp --force --grace-period 0
oc delete  -f https://raw.githubusercontent.com/marcredhat/Akka-cluster-deploy-kubernetes/master/deploy/kubernetes/resources/myapp/statefulset-with-pull-secret.yaml
oc delete  -f https://raw.githubusercontent.com/marcredhat/Akka-cluster-deploy-kubernetes/master/deploy/kubernetes/resources/myapp/myapp-service.yaml
