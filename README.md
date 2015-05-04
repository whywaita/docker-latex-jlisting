# Re:VIEW image for Docker

このリポジトリは[Docker](https://www.docker.com/)上で[Re:VIEW](https://github.com/kmuto/review)を動かすためのものです。
[vvakameさんのもの](https://github.com/vvakame/docker-review)をforkして、自分好みに修正しています。

利用可能になるのは、review関連コマンドとrakeコマンド、texlive関連コマンドです。

[Docker Hub](https://registry.hub.docker.com/u/orangain/review/)にAutomated Buildとして置いてあるのでご活用ください。

## 参考

[Re:VIEWとDockerとCircleCIで原稿を継続的インテグレーション - orangain flavor](http://orangain.hatenablog.com/entry/review-docker-circleci)

## How to build

```
docker build -t orangain/review .
```
