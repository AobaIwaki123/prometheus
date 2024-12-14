# PrometheusとGrafana Eco Systemを用いたオンプレサーバー監視基盤

## 事前準備

```sh
$ sudo make setup-docker-repo
$ sudo make install-docker
```

## Quic Start

```sh
$ make create-volumes # docker volumeを作成
$ make up # docker-compose up
$ make down # docker-compose down
```

- update prometheus.yml without stopping server

```sh
$ vim prometheus/prometheus.yml
# configure something...
$ make reload
```

## Exporters
- [監視対象サーバーに設置するExporter](./exporters/README.md)

## Grafana Dashboard List

- Node Exporter Full: https://grafana.com/grafana/dashboards/1860-node-exporter-full/

## Getting Started With Loki

- [Getting Started with Loki](./evaluate-loki/README.md)
