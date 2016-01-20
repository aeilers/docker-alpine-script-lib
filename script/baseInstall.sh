#!/bin/bash

###
# environment install script for Alpine Linux on Docker
###

DIVIDER="===================="
TEMPLATE="\n\n${DIVIDER}${DIVIDER}${DIVIDER}\n%s\n\n\n"

###
# NOTE: packages for env improvements are a personal preference here...
#   - bash-completion coreutils grep tree
###
printf "${TEMPLATE}" "Installing Alpine Linux Packages for Base"

apk add \
    coreutils \
    grep \
    tree

# remove apk cache and list
printf "${TEMPLATE}" "Removing Alpine Linux Package Cache and /tmp"

rm -rf \
    /tmp/* \
    /var/cache/apk/*
