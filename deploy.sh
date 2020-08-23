

oc create secret docker-registry marcsecretquay --docker-server=quay.io --docker-username=$quayusername --docker-password=$quayencryptedpassword --docker-email=$quayemail
oc create  -f https://raw.githubusercontent.com/marcredhat/Akka-cluster-deploy-kubernetes/master/deploy/kubernetes/resources/myapp/statefulset-with-pull-secret.yaml
oc create  -f https://raw.githubusercontent.com/marcredhat/Akka-cluster-deploy-kubernetes/master/deploy/kubernetes/resources/myapp/myapp-service.yaml
oc expose svc my-app
oc get route
curl my-app-akka.apps.ocp45demo.local
