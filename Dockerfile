FROM ruby:2.5.3

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
        postgresql-client \
    && rm -rf /var/lib/apt/lists/*

ENV APP_PATH ./project-china
ENV SECRET_KEY_BASE 452ce83a8a41be1708bed4b01376dee0e39f4a1207825b313ca1374440d56b42c2db2c69d60322435bd6fb99ce33b8fbd65e29f5476fa38570eeae90f0b88f5e

WORKDIR /usr/src/app
COPY $APP_PATH/Gemfile* ./
RUN gem install bundler && bundle config mirror.https://rubygems.org https://gems.ruby-china.com && bundle install