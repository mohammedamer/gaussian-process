# Start Jupyter notebook container

set -e

IMAGE_NAME=notebook
docker build -t $IMAGE_NAME -f Dockerfile.jupyter  .
docker run --rm -p 8888:8888 -v "$(pwd):/home/jovyan/" $IMAGE_NAME
