# NAME: fahchen/elasticsearch-analysis-ik

FROM elasticsearch:6.0.1-alpine

MAINTAINER Phil Chen '06fahchen@gmail.com'

ENV VERSION=6.0.1

ADD https://github.com/medcl/elasticsearch-analysis-ik/releases/download/v${VERSION}/elasticsearch-analysis-ik-$VERSION.zip /tmp/
RUN /usr/share/elasticsearch/bin/elasticsearch-plugin install file:///tmp/elasticsearch-analysis-ik-$VERSION.zip

RUN rm -rf /tm/*
