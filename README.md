## アプリケーション名
セイバーメトリクス's

## アプリケーション概要
管理者がプロ野球のデータを入力する事でメジャー指標の成績を表示してくれます。

## URL
https://original-sabermetrics.herokuapp.com/

## 管理者用アカウント
・メールアドレス：admin@example.jp
・パスワード：901020453

## 利用方法
1.ログインボタンをクリックし、管理者アカウントでログインします。
2.トップページの打者成績をクリックします。
3.新規データ入力から各種データを入力します。
4.打者成績一覧ページにてデータの確認ができます。

## アプリケーションを作成した背景
メジャーリーグで重要視されている成績指標セイバーメトリクスを表示している物がありませんでした。プロ野球ファンは30~50代の男性が多く、家庭や仕事で自由時間を少ない為、そんな方々でも手早くコアな成績をチェック出来る事を目的に作成しました。

## 洗い出した要件
https://docs.google.com/spreadsheets/d/1HhML1V44qE1csp0Q0Z_qc0nUbrQ9_feNzWZbuR_U1Po/edit#gid=1154708370
## 実装した機能についての画像
[![Image from Gyazo](https://i.gyazo.com/b2cc58f545ef8d62a6f51c9ea0718eb5.png)](https://gyazo.com/b2cc58f545ef8d62a6f51c9ea0718eb5)

## 実装予定の機能
お気に入り機能と勝敗予想機能の実装を予定しています。

## データベース設計
[![Image from Gyazo](https://i.gyazo.com/04eebd141b2308ea90573e6ba1257051.png)](https://gyazo.com/04eebd141b2308ea90573e6ba1257051)

## 画面遷移図
[![Image from Gyazo](https://i.gyazo.com/2c5c7b3c8947baf862675a44cc4c8b13.png)](https://gyazo.com/2c5c7b3c8947baf862675a44cc4c8b13)

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