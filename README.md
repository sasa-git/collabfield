# README

## DBの作成
PostgreSQLを使っています。Gemfileの以下の所の設定を確認してください

```
development:
  adapter: postgresql
  host: localhost
  encoding: utf8
  database: psgr_db
  username: postgres #任意
  password: postgres #任意
```

`$ sudo yum install postgresql-devel`

`$ sudo yum install postgresql-server`

`$ sudo passwd postgres` #パスワード設定

`$ su postgres` #postgresユーザーに切り替え

`$ initdb -D /var/lib/pgsql/data` DBの初期化

`$ pg_ctl -D /var/lib/pgsql/data start`

`$ rails db:create RAILS_ENV=development` DBの作成

`$ su postgres`

`$ psql -l`でdatabase: psgr_dbで登録したDBが作成されているか確認できる