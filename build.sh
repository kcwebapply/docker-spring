#/bin/bash


#パッケージをビルド
./mvnw package
#dockerイメージ作成、コンテナライズ
./mvnw install dockerfile:build
#docker起動
docker run -t springio/batch
