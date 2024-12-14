# PrometheusとGrafana Eco Systemを用いたオンプレサーバー監視基盤

## Versions

- docker: 27.3.1
- prometheus: 3.0.0
- grafana: 11.3.1

## Quic Start

```sh
$ task create-volumes # docker volumeを作成
$ task up # docker-compose up
$ task down # docker-compose down
```

- update prometheus.yml without stopping server

```sh
$ vim prometheus/prometheus.yml
# configure something...
$ task reload
```

## Other Docs

- [Install Docker](./docs/install_docker.md)

## Exporters

- [監視対象サーバーに設置するExporter](./exporters/README.md)

## Grafana Dashboard List

- Node Exporter Full: https://grafana.com/grafana/dashboards/1860-node-exporter-full/

## Getting Started With Loki

- [Getting Started with Loki](./evaluate-loki/README.md)
