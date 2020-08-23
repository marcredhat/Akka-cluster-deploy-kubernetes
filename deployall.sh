
printf "\n\n ===> OpenShift version \n"

oc version 

sleep 5

git clone https://github.com/marcredhat/Akka-cluster-deploy-kubernetes.git

cd Akka-cluster-deploy-kubernetes

sudo chmod +x *.sh

printf "\n\n ===> Cleanup previous deployments \n"

./cleanup.sh 2>/dev/null

sleep 5

printf "\n\n ===> Show pods \n"

oc get pods

sleep 5

printf "\n\n ===> Build image and push it to private quay registry \n"

./buildandpushimage.sh 2>/dev/null

sleep 5

printf "\n\n ===> Deploy app and expose route \n"

./deploy.sh 2>/dev/null

printf "\n\n ===> Generate traffic \n"




./generatetraffic.sh
