oc version 

sleep 4

git clone https://github.com/marcredhat/Akka-cluster-deploy-kubernetes.git

cd Akka-cluster-deploy-kubernetes

sudo chmod +x *.sh

./cleanup.sh

sleep 3

oc get pods

sleep 4

./buildandpushimage.sh

./deploy.sh

./generatetraffic.sh
