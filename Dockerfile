# NAME:    skylark/elasticsearch
# VERSION: 5.6.0-alpine
FROM elasticsearch:5.6.0-alpine

MAINTAINER Phil Chen '06fahchen@gmail.com'

ADD https://github.com/medcl/elasticsearch-analysis-ik/releases/download/v5.6.0/elasticsearch-analysis-ik-5.6.0.zip /tmp/
RUN /usr/share/elasticsearch/bin/elasticsearch-plugin install file:///tmp/elasticsearch-analysis-ik-5.6.0.zip

RUN rm -rf /tm/*
