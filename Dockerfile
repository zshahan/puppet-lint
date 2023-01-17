FROM alpine:3.14
RUN apk update && apk upgrade
RUN apk add --no-cache ruby \
  ruby-bundler ruby-dev git \
  yamllint make gcc musl-dev openssh-client
RUN gem install puppet-lint json --no-document
ENTRYPOINT ["git"]
