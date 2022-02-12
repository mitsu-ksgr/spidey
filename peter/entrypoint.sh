#!/usr/bin/env bash
#------------------------------------------------------------------------------
#
# entrypoint.sh
#
# this script takes agrs from `docker run` command and passes them to scrapy.
#
#------------------------------------------------------------------------------
set -u
umask 0022
export LC_ALL=C

readonly GEN_SPIDER_COMMAND=gen-spider
readonly SPIDER_DIR_NAME=spiders

main() {
    local cmd="${1+$1}"
    local result=0

    if [ "${cmd}" = "${GEN_SPIDER_COMMAND}" ]; then
        local name="${2+$2}"
        local url="${3+$3}"
        local path="./${SPIDER_DIR_NAME}/${name}"

        mkdir -p $path
        cd $path
        scrapy genspider $name $url || result=$?

    else
        scrapy $@ || result=$?
    fi

    if [ ! "${result}" = "0" ]; then
        echo "Error: There was a problem running scrapy." 1>&2
        exit 1
    fi
}

main $@
exit 0

