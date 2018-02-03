# wordpress-docker-compose






```
docker-compose up wordmove bash
```
ログイン

sql_adapter/default.rb:45　あたりでエラーの時は


/usr/local/bundle/gems/wordmove-2.4.2/lib/wordmove/sql_adapter/default.rb
に
```
sql_content.force_encoding("UTF-8")
```
を追加

下記参照:
https://github.com/welaika/wordmove/wiki/invalid-byte-sequence-in-UTF-8-while-pushing---pulling-db
