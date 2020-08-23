
#sudo rm -rf ./Akka-cluster-deploy-kubernetes
oc project akka
oc delete secret marcsecretquay -n akka
oc delete statefulset,svc --all -n akka
oc delete pod -l app=myapp --force --grace-period 0 -n akka
oc delete  -f https://raw.githubusercontent.com/marcredhat/Akka-cluster-deploy-kubernetes/master/deploy/kubernetes/resources/myapp/statefulset-with-pull-secret.yaml -n akka
oc delete  -f https://raw.githubusercontent.com/marcredhat/Akka-cluster-deploy-kubernetes/master/deploy/kubernetes/resources/myapp/myapp-service.yaml -n akka
