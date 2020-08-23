
sudo rm -rf ./Akka-cluster-deploy-kubernetes
oc delete statefulset,svc --all -n akka
oc delete pod -l app=myapp --force --grace-period 0
