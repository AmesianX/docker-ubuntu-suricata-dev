#! /bin/sh
#
# Wrapper script around Docker.

TAG="jasonish/ubuntu-suricata"
CIDFILE="./cid"

build() {
    docker build --rm -t ${TAG} .
}

run() {
    if tty > /dev/null; then
        tty="--tty"
    fi
    exec docker run ${tty} -i --rm --net=host ${ENV_FILE} \
	   -v $(pwd)/data:/data \
	   ${VOLUMES} \
	   ${DOCKER_ARGS} ${TAG} "$@"
}

usage() {
    cat <<EOF
usage: $0 <command> [args...]

commands:

    run [command]        - Default to a shell.
    build                - (Re)builds the container.
 
EOF
}

case "$1" in

    build)
	build
	;;

    run)
	shift
	run "$@"
	;;

    *)
	usage
	;;

esac
