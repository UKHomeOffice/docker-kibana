FROM quay.io/ukhomeofficedigital/centos-base:v0.2.0

RUN yum upgrade -y -q; yum clean all
RUN yum install -y -q tar wget; yum clean all

EXPOSE 5601

ENV KIBANA_VERSION 4.4.2
RUN wget -q https://download.elastic.co/kibana/kibana/kibana-${KIBANA_VERSION}-linux-x64.tar.gz -O - | tar -xzf -; mv kibana-${KIBANA_VERSION}-linux-x64 /kibana
WORKDIR /kibana

COPY kibana.yml /kibana/config/kibana.yml

ENTRYPOINT ["node/bin/node", "src/cli"]
