# Makefile
DOCKER_ENV              ?= DOCKER_BUILDKIT=1
DOCKER_TAG              ?= 20.10.1
DOCKER_REGISTRY         ?= docker.io
DOCKER_REPOSITORY       ?= monandkey/srsue
DOCKER_BUILD_ARGS       ?= --rm

SRSRAN_IMAGE_NAME      ?= ${DOCKER_REGISTRY}/${DOCKER_REPOSITORY}:${DOCKER_TAG}

build-all: build-SRSRAN

.PHONY: build-SRSRAN
build-SRSRAN: 
	${DOCKER_ENV} docker build ${DOCKER_BUILD_ARGS} \
		--tag ${SRSRAN_IMAGE_NAME} \
		--file ./Dockerfile \
		--no-cache \
		--build-arg REGISTRY=${DOCKER_REGISTRY} \
		--build-arg REPOSITORY=${DOCKER_REPOSITORY} \
		--build-arg TAG=${DOCKER_TAG} \
		./

# Sample Command
# DOCKER_BUILDKIT=1 docker build --rm \
#   --tag docker.io/monandkey/srsue:20.10.1 \
#   --file ./Dockerfile \
#   --no-cache \
#   ./
