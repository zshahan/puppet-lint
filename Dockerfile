FROM alpine:3.14
RUN apk update && apk upgrade
RUN apk add --no-cache ruby \
  ruby-bundler ruby-dev git yamllint
RUN gem install puppet-lint --no-document
ENTRYPOINT ["git"]
