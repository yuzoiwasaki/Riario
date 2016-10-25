# Riario
ソーシャル日記サービス

## 使い方

### 各種gemのインストール
```
$ bundle install
```

### データベースのセットアップ
```
$ rake db:create
$ rake db:migrate
```

### メール送信用gmail設定

gmailアカウントとパスワードを置き換える。
```
$ vim config/settings.yml
```

### アプリケーションの起動
```
$ rails s
```

ブラウザで以下にアクセスします。
> http://localhost:3000
