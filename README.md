## アプリケーション名
セイバーメトリクス's

## アプリケーション概要
管理者がプロ野球のデータを入力する事でメジャー指標の成績を表示してくれます。

## URL
https://original-sabermetrics.herokuapp.com/

## テスト用アカウント
・メールアドレス：aka@yahoo.co.jp
・パスワード：901020

## 管理者用アカウント
・メールアドレス：admin@example.jp
・パスワード：901020453

## 利用方法
1.ログインボタンをクリックし、管理者アカウントでログインします。
2.トップページの打者成績をクリックします。
3.新規データ入力から各種データを入力します。
4.打者成績一覧ページにてデータの確認ができます。

## アプリケーションを作成した背景


## 洗い出した要件
https://docs.google.com/spreadsheets/d/1HhML1V44qE1csp0Q0Z_qc0nUbrQ9_feNzWZbuR_U1Po/edit#gid=1154708370
## 実装した機能についての画像


## 実装予定の機能
お気に入り機能と勝敗予想機能の実装を予定しています。

## データベース設計


## 画面遷移図


## 開発環境
・フロントエンド:HTML,CSS
・バックエンド:Ruby(ver 2.6.5p114) / Ruby on Rails(ver 6.0.4.1)
・インフラ:MySQL
・テスト:RSpec
・テキストエディスタ:Visual Studio Code
・タスク管理：デスクトップメモ

## ローカルでの動作方法
以下、コマンドを順に実行してください。
% git clone https://github.com/taiki365/original
% cd original
% bundle install
% yarn install











## users テーブル

| Column             | Type     | Options                   |
| ------------------ | -------- | ------------------------- |
| email              | string   | null: false, unique: true |
| encrypted_password | string   | null: false               |



## teams テーブル

| Column      | Type       | Options                        |
| ----------- | ---------- | ------------------------------ |
| game_number | integer    | null: false                    |
| team_name_id | integer     | null: false                    |
| draw        | integer    | null: false                    |


## batters テーブル

| Column        | Type    | Options     |
| ------------- | ------- | ----------- |
| batter_name   | string  | null: false |
| bat           | integer | null: false |
| rbi           | integer | null: false |
| single        | integer | null: false |
| double        | integer | null: false |
| triple        | integer | null: false |
| homerun       | integer | null: false |
| walks         | integer | null: false |
| dead_ball     | integer | null: false |
| sacrifice_fly | integer | null: false |
| strikeout     | integer | null: false |
| steal         | integer | null: false |
| steal_dead    | integer | null: false |
| runs          | integer | null: false |


## pitchers テーブル

| Column                     | Type    | Options     |
| -------------------------- | ------- | ------------|
| pitcher_name               | string  | null: false |
| damage_hit                 | integer | null: false |
| defense                    | float   | null: false |
| win                        | integer | null: false |
| lose                       | integer | null: false |
| conceded                   | integer | null: false |
| damage_homerun             | integer | null: false |
| gave_walks                 | integer | null: false |
| gave_dead_ball             | integer | null: false |
| inning                     | integer | null: false |
| damage_batting_average     | float   | null: false |
| damage_base_percentage     | float   | null: false |
| qs                         | integer | null: false |
| damage_slugging_percentage | float   | null: false |
