FROM ruby:3

RUN apt-get update -y && apt-get install -y nodejs npm && npm install -g firebase-tools

WORKDIR /usr/src/kolonixid

COPY Gemfile Gemfile.lock ./
RUN bundle install

COPY . .
