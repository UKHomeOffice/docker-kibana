FROM quay.io/ukhomeofficedigital/centos-base:v0.2.0

RUN yum upgrade -y -q; yum clean all
RUN yum install -y -q tar wget fontconfig; yum clean all
RUN groupadd -r -g 1000 kibana && adduser -M -u 1000 -g 1000 kibana

EXPOSE 5601

ENV KIBANA_VERSION 5.5.1
RUN wget -q https://artifacts.elastic.co/downloads/kibana/kibana-${KIBANA_VERSION}-linux-x86_64.tar.gz -O - | tar -xzf -; mv kibana-${KIBANA_VERSION}-linux-x86_64 /kibana

RUN /kibana/bin/kibana-plugin install x-pack

RUN chown -R kibana:kibana /kibana

USER kibana

WORKDIR /kibana

COPY run.sh /run.sh
COPY kibana.yml /kibana/config/kibana.yml

ENTRYPOINT ["/run.sh"]
