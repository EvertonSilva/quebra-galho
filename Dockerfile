FROM ruby:2.3.1
MAINTAINER Everton Silva <@_evertonsilva>
RUN apt-get update -qq \
	&& apt-get install -y build-essential nodejs libpq-dev \
	&& mkdir -p /var/quebra-galho
WORKDIR /var/quebra-galho
COPY Gemfile /var/quebra-galho/Gemfile
COPY Gemfile.lock /var/quebra-galho/Gemfile.lock
RUN bundle install
COPY . /var/quebra-galho
