# build docker image
docker build -t item-app:v1 .

# view list of local images
docker images

# tag the image for github packages
docker tag item-app:v1 docker.pkg.github.com/nafifurqon/item-app/item-app:v1

# login to github packages
echo $GITHUB_TOKEN | docker login docker.pkg.github.com -u nafifurqon --password-stdin

# push the image to github packages
docker push docker.pkg.github.com/nafifurqon/item-app/item-app:v1
