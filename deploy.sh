oc create  -f https://raw.githubusercontent.com/marcredhat/Akka-cluster-deploy-kubernetes/master/deploy/kubernetes/resources/myapp/statefulset-with-pull-secret.yaml
oc create  -f https://raw.githubusercontent.com/marcredhat/Akka-cluster-deploy-kubernetes/master/deploy/kubernetes/resources/myapp/myapp-service.yaml
oc expose svc my-app
oc get route
