# NAME:    skylark/elasticsearch

ARG VERSION=5.6.3
FROM elasticsearch:${VERSION}-alpine

MAINTAINER Phil Chen '06fahchen@gmail.com'

ADD https://github.com/medcl/elasticsearch-analysis-ik/releases/download/v$VERSION/elasticsearch-analysis-ik-$VERSION.zip /tmp/
RUN /usr/share/elasticsearch/bin/elasticsearch-plugin install file:///tmp/elasticsearch-analysis-ik-$VERSION.zip

RUN rm -rf /tm/*
