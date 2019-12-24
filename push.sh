. setenv.sh

docker tag "$IMAGE_NAME:$IMAGE_VERSION" "docker.pkg.github.com/carljmosca/ubi-java/$IMAGE_NAME:$IMAGE_VERSION"
docker push "docker.pkg.github.com/carljmosca/ubi-java/$IMAGE_NAME:$IMAGE_VERSION"