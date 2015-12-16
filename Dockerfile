FROM seapy/ruby:2.2.0
MAINTAINER Kareem Kouddous <kareemknyc@gmail.com>

WORKDIR /agent
ADD . /agent

RUN bundle install

CMD bundle exec ./newrelic_kafka_consumer_lag_agent
