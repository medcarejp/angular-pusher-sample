# AngularPusherSample

バックエンドをRails6(APIモード)・フロントエンドをAngular10で作った、
Pusherでリアルタイム通信を行うサンプルアプリです。

## 開発環境構築手順

### Docker Desktopのインストール

Dockerを使いますので、
・[win環境の方はDocker Desktop for windows](https://docs.docker.jp/docker-for-windows/install.html)
・[Macの方はDocker Desktop for Mac](https://docs.docker.jp/docker-for-mac/install.html)
をお手持ちの環境にインストールしてください。

本ReadMeではMacユーザーを前提にお話させていただきます。

### git clone ~ Dockerコンテナ立ち上げまで

```
$ git clone https://github.com/medcarejp/angular-pusher-sample.git
```

```
$ cd angular-pusher-sample
```

```
$ docker-compose build
```

```
$ docker-compose up
```

```
$ docker-compose exec --user=node node bash
```

```
node@コンテナID:/myapp$ ng serve --host 0.0.0.0
```

以下のURLにアクセスしてStartGuideが表示されればOK
http://localhost:4200/

あとはコンテナ内で ```ng g component``` コマンド等を使って開発を進められますし、

```
ローカル環境のターミナル $ docker-compose run node ng g component sample
```

のようにローカルからコンポーネント生成もできます。ホットリロードも効きますので、コンテナの立ち上げ直しは必要ありません。
