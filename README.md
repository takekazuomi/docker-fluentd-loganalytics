# README

fluentd公式イメージに、[fluent-plugin-azure-loganalytics](https://github.com/yokawasa/fluent-plugin-azure-loganalytics) を追加

[fluent/fluentd](https://hub.docker.com/r/fluent/fluentd/)の`3. Customize Dockerfile to install plugins (optional)` あたりに、` fluent-plugin-elasticsearch` の例があるので参考して作成。

+19MB、そんなものかな？

```sh
% docker image ls | grep fluent
takekazuomi/fluent-loganalytics        latest              07b3241ee577        45 minutes ago      57.2MB
fluent/fluentd                         latest              9406ff63f205        19 months ago       38.3MB
```

`sudo build-base ruby-dev` がどうして必要なのか不明だが、サンプル通り

https://hub.docker.com/repository/docker/takekazuomi/fluent-loganalytics

## TODO

- `USER fluent` するかどうかが、current images と older images とで違っているので、確認する。latest が、older images だったので、edgeにして、current image 使うなら、`USER fluent` が必要なのかも
- tagをバージョン指定にする。基本ベースイメージと合わせるのが良いと思う。TAG 取得のAPIもあるし。

## change log

- latest から、edge に変更。latest は、古いイメージ用らしい[Fluentd Docker Image](https://hub.docker.com/r/fluent/fluentd)
