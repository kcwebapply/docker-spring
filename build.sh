#/bin/bash

#dockerファイルをSpringProjectにコピー
cp Dockerfile ../$1/Dockerfile
cd ../$1
#パッケージをビルド
./mvnw package
#dockerイメージ作成、コンテナライズ
./mvnw install dockerfile:build
#docker起動
docker run -t $2
#apiの場合はポーと指定 -p 8080:8080
