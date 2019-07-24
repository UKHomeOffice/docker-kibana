# Kibana 6.8.1

## Configuration
Configuration is done via environment variables.

* `ELASTICSEARCH_URL`: ElasticSearch url. Default: `http://localhost:9200`.
* `ELASTICSEARCH_CERTIFICATE_VERIFICATION`: Whether to verify elasticsearch certificate. Default: `true`
* `ELASTICSEARCH_SSL_CA_CERT_PATH`: (Optional) Path to the PEM file for the certificate authority for your Elasticsearch instance.
* `ELASTICSEARCH_USERNAME`: (Optional) Elasticsearch username for Kibana. Default: `""`.
* `ELASTICSEARCH_PASSWORD`: (Optional) Elasticsearch password for Kibana user. Default: `""`.
* `ENABLE_KIBANA_RUNAS_HEADER`: (Optional) Allow Kibana to pass “run as” header to Elasticsearch from Nginx. Default: `false`.
* `KIBANA_SERVER_HOST`: Listen host. Default: `0.0.0.0`.
* `KIBANA_SERVER_PORT`: Listen port. Default: `5601`.
* `XPACK_SECURITY_ENABLE`: Whether to enable X-Pack security plugin. Default: `false`.
* `XPACK_SECURITY_ENCRYPTION_KEY`: Required if X-Pack security enabled. An arbitrary string of 32 characters or more used to encrypt credentials in a cookie. It is crucial that this key is not exposed to Kibana users. Default: (randomly generated UUID).
* `XPACK_SECURITY_SECURE_COOKIES_ENABLE`: Whether to enable secure cookies. Default: `false`. Read more [here](https://www.elastic.co/guide/en/x-pack/5.1/kibana.html#security-ui-settings)
* `XPACK_MONITORING_ENABLE`: Whether to enable X-Pack monitoring features. Default: `false`.
* `XPACK_MONITORING_REPORT_STATS`: Whether or not to send cluster statistics to Elastic. Default: `false`.
* `XPACK_GRAPH_ENABLE`: Whether to enable X-Pack graph features. Default: `false`.
* `XPACK_ML_ENABLE`: Whether to enable X-Pack machine learning features. Default: `false`.
* `XPACK_REPORTING_ENABLE`: Whether to enable X-Pack reporting features. Default: `false`.
* `XPACK_APM_ENABLE`: Whether to enable X-Pack APM module. Default: `false`.
* `XPACK_APM_UI_ENABLE`: Whether to enable X-Pack APM UI. Default: `false`.
* `XPACK_INFRA_ENABLE`: Whether to enable X-Pack Infra & Logs UI. Default: `false`.
* `XPACK_CANVAS_ENABLE`: Whether to enable X-Pack Canvas UI. Default: `false`.
* `XPACK_GROKDEBUGGER_ENABLE`: Whether to enable Grok debugger in Dev Tools. Default: `false`.
* `XPACK_UPTIME_ENABLE`: Whether to enable X-Pack Uptime UI. Default: `false`.
* `XPACK_MAPS_ENABLE`: Whether to enable X-Pack Maps UI. Default: `false`.

## Plugins

### X-Pack
See documentation: https://www.elastic.co/guide/en/x-pack/current/index.html
