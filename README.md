# PrometheusとGrafana Eco Systemを用いたオンプレサーバー監視基盤

## Versions

- docker: 27.3.1
- prometheus: 3.0.0
- grafana: 11.3.1

## Quick Start

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

## Trouble Shooting

### Error: No module named 'distutils'

```sh
$ task up
Traceback (most recent call last):
  File "/usr/bin/docker-compose", line 33, in <module>
    sys.exit(load_entry_point('docker-compose==1.29.2', 'console_scripts', 'docker-compose')())
             ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "/usr/bin/docker-compose", line 25, in importlib_load_entry_point
    return next(matches).load()
           ^^^^^^^^^^^^^^^^^^^^
  File "/usr/lib/python3.12/importlib/metadata/__init__.py", line 205, in load
    module = import_module(match.group('module'))
             ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "/usr/lib/python3.12/importlib/__init__.py", line 90, in import_module
    return _bootstrap._gcd_import(name[level:], package, level)
           ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "<frozen importlib._bootstrap>", line 1387, in _gcd_import
  File "<frozen importlib._bootstrap>", line 1360, in _find_and_load
  File "<frozen importlib._bootstrap>", line 1331, in _find_and_load_unlocked
  File "<frozen importlib._bootstrap>", line 935, in _load_unlocked
  File "<frozen importlib._bootstrap_external>", line 995, in exec_module
  File "<frozen importlib._bootstrap>", line 488, in _call_with_frames_removed
  File "/usr/lib/python3/dist-packages/compose/cli/main.py", line 9, in <module>
    from distutils.spawn import find_executable
ModuleNotFoundError: No module named 'distutils'
```

### Solution: Install pip

```sh
$ sudo apt install python3-pip
```

## Other Docs

- [Install Docker](./docs/install_docker.md)

## Exporters

- [監視対象サーバーに設置するExporter](./exporters/README.md)

## Grafana Dashboard List

- Node Exporter Full: https://grafana.com/grafana/dashboards/1860-node-exporter-full/

## Getting Started With Loki

- [Getting Started with Loki](./evaluate-loki/README.md)
