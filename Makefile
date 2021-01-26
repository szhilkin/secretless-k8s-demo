#VERSION = $(shell date +v%Y%m%d)-$(shell git describe --tags --always --dirty)
VERSION = 1.0

IMG = "szhilkin/secretless-k8s-demo"

all: image

image:
	docker build --no-cache -t "$(IMG):$(VERSION)" .

push: image
	docker -- push "$(IMG):$(VERSION)"

.PHONY: all image push
