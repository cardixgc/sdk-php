#!/bin/sh

docker run \
    --rm \
    -v "${PWD}:/local" \
    --add-host host.docker.internal:host-gateway \
    openapitools/openapi-generator-cli \
    generate \
    -i http://host.docker.internal:8013/doc.json \
    -g php \
    -p invokerPackage=Cardix \
    --git-user-id cardixgc \
    --git-repo-id sdk-php \
    -o /local/php           

sudo chown cg.cg php -R
