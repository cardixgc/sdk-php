#!/bin/sh

docker run \
    --rm \
    -v "${PWD}:/local" \
    --add-host host.docker.internal:host-gateway \
    openapitools/openapi-generator-cli \
    generate \
    -c /local/php.yaml \
    -i https://api-qa.cardix.com.br/doc.json \
    -g php \
    --git-user-id cardixgc \
    --git-repo-id sdk-php \
    -o /local/php           

sudo chown cg.cg php -R
