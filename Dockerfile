FROM seapy/ruby:2.2.0
MAINTAINER Kareem Kouddous <kareemknyc@gmail.com>

WORKDIR /agent

ADD . /agent
ADD config/newrelic_plugin.yml /agent/config/newrelic_plugin.yml

RUN bundle install

CMD bundle exec ./newrelic_kafka_consumer_lag_agent
