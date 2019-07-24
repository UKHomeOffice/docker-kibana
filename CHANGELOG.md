# CHANGELOG

## 6.8.1-1

* Upgrades Kibana to version 6.8.1: https://www.elastic.co/guide/en/kibana/6.8/release-notes.html

* `X-pack` installed by default
* The following environment variables are REMOVED:
    * `XPACK_MONITORING_REPORT_STATS`
* The following environment variables are ADDED (See README.md for details):
    * `XPACK_TELEMETRY_ENABLE`
    * `KIBANA_SERVER_HOST`
    * `KIBANA_SERVER_PORT`
    * `XPACK_APM_ENABLE`
    * `XPACK_APM_UI_ENABLE`
    * `XPACK_INFRA_ENABLE`
    * `XPACK_CANVAS_ENABLE`
    * `XPACK_GROKDEBUGGER_ENABLE`

## 5.6.16-1

* Upgrades Kibana to version 5.6.16: https://www.elastic.co/guide/en/kibana/5.6/release-notes.html

### Notes:

The key upgrade in this version is the addition of the Upgrade Assistant and its API, which can be used to stage a migration to v6.x
