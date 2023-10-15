# build docker image
docker build -t item-app:v1 .

# view list of local images
docker images

# tag the image for github packages
docker tag item-app:v1 ghcr.io/nafifurqon/item-app/item-app:v1

# login to github packages
echo $CR_PAT | docker login ghcr.io -u nafifurqon --password-stdin

# push the image to github packages
docker push ghcr.io/nafifurqon/item-app/item-app:v1
