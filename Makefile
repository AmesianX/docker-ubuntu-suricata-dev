TAG :=	jasonish/suricata-ubuntu-dev

all: build

build:
	docker build --rm -t ${TAG} .

