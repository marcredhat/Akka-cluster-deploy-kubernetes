podman  login -u=$quayusername -p=$quayencryptedpassword quay.io
sudo podman build -t php-ubi .
podman push localhost/php-ubi quay.io/$quayusername/php-ubi
