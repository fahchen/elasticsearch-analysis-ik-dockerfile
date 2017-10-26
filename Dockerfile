# NAME:    skylark/elasticsearch
# VERSION: 5.5.2-alpine
FROM elasticsearch:5.5.2-alpine

MAINTAINER Phil Chen '06fahchen@gmail.com'

ADD https://github.com/medcl/elasticsearch-analysis-ik/releases/download/v5.5.2/elasticsearch-analysis-ik-5.5.2.zip /tmp/
RUN /usr/share/elasticsearch/bin/elasticsearch-plugin install file:///tmp/elasticsearch-analysis-ik-5.5.2.zip

RUN rm -rf /tm/*
