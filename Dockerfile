FROM ruby:2.2.1

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
        postgresql-client \
    && rm -rf /var/lib/apt/lists/*

ENV APP_PATH ./project-china

WORKDIR /usr/src/app
COPY $APP_PATH/Gemfile* ./
RUN bundle install