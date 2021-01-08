# arumono
[![Image from Gyazo](https://i.gyazo.com/ef15d2e853381567d1c3c784dba57d0e.jpg)](https://gyazo.com/ef15d2e853381567d1c3c784dba57d0e)

## アプリケーションの概要
家にある食材や調味量を簡単に管理することができるアプリケーションです。  家に「あるもの」が一覧で見ることができるので、余分な買い物や買い忘れを防ぐことが出来ます。また、賞味期限も一覧表示されるので、「いつの間にか期限が過ぎていた・・・」といったことも防ぐことが出来ます。
## [arumono](https://arumono.herokuapp.com/)

## basic認証
ID : admin  
PASS : 2222

## 利用方法
1. トップページの『登録する』から食材登録ページへ遷移します。
2. 家にある食材や調味料などの「名前」「数量・単位」「賞味（消費）期限」を入力し、登録ボタンをクリックします。
3. 一覧ページに賞味期限が近い順で表示されます。確認するには『あるもの一覧』か『整理する』から遷移します。
4. 使った食材は一覧画面から編集や削除ボタンで数量を変更します。
[![Image from Gyazo](https://i.gyazo.com/14956d5e27ac10e8dd28b082aaad83aa.gif)](https://gyazo.com/14956d5e27ac10e8dd28b082aaad83aa)

## 作成の背景
日頃の「もったいない」を解決すべくこのアプリケーションを開発いたしました。  特に1人暮らしや料理に慣れていない方の中には、「買い物に行ったけどまだ残っている食材を買ってきてしまった。」「冷蔵庫の奥にしまいっぱなしで賞味期限が切れてしまった。」など様々な「もったいない」を実際に経験したことがあるのではないでしょうか？  そこで、家にあるものやその賞味期限を簡単に管理したい、という思いを形にしました。

## 要件定義
|機能         | 目的                         |
|----------- | ---------------------------- |
| 食材登録機能 | 食材の数量や期限を登録する       |
| 編集機能    | 食材の数量の調整、削除を行う      |


## 実装予定機能
機能          | 目的                         |
|----------- | ---------------------------- |
| 買い物リスト | 買い物リストを作成する。         |
| 通知機能    | 賞味期限の近いものがあれば通知する |

## データベース設計
### foodstuff テーブル

| Column      | Type    | Options     |
| ----------- | ------- | ----------- |
| name        | string  | null: false |
| amount      | integer | null: false |
| unit_id     | integer | null: false |
| limit       | date    |             |