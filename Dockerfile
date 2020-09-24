FROM vydev/awscli:latest as resource
RUN apk add --update --no-cache \
    docker-cli

FROM resource
ENTRYPOINT [ "aws" ]
CMD [ "--version" ]