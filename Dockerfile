FROM vydev/awscli:latest as resource
RUN apk add --update --no-cache \
    py-pip \
    zip \
    jq
RUN pip install \
    awscli

FROM resource
ENTRYPOINT [ "aws" ]
CMD [ "--version" ]