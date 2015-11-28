FROM ruby:latest
MAINTAINER bmurzeau

ENV LANG c.UTF-8

RUN gem install exifr
RUN gem install sinatra

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

COPY Gemfile /usr/src/app/
COPY Gemfile.lock /usr/src/app/
RUN bundle install

COPY . /usr/src/app

CMD ["ruby", "main.rb"]
