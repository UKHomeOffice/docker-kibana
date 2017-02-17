#!/usr/bin/bash

export HOME=/kibana

: ${ELASTICSEARCH_CERTIFICATE_VERIFICATION:=true}

sed -e "s/%ELASTICSEARCH_CERTIFICATE_VERIFICATION%/${ELASTICSEARCH_CERTIFICATE_VERIFICATION}/" \
      -i /kibana/config/kibana.yml

exec /kibana/node/bin/node src/cli
