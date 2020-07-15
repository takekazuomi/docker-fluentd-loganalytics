# README

[fluent-plugin-azure-loganalytics](https://github.com/yokawasa/fluent-plugin-azure-loganalytics) を追加

[fluent/fluentd](https://hub.docker.com/r/fluent/fluentd/)の`3. Customize Dockerfile to install plugins (optional)` あたりを参考して作成。

+19MB、そんなものかな？

```sh
% docker image ls | grep fluent
takekazuomi/fluent-loganalytics        latest              07b3241ee577        45 minutes ago      57.2MB
fluent/fluentd                         latest              9406ff63f205        19 months ago       38.3MB
```

`sudo build-base ruby-dev` がどうして必要なのか不明だが、サンプル通り


