FROM docker:19.03.5 as resource
RUN apk add --update --no-cache \
    py-pip \
    zip \
    jq
RUN pip install \
    awscli

FROM resource
ENTRYPOINT [ "aws" ]
CMD [ "--version" ]