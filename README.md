# README

# アプリ名
D.maker
# 概要
・登録した献立をランダム出力する  
・調理完了後の写真を感想と一緒に保存する  
・保存された調理の記録を振り返る

# 本番環境

# 制作背景
料理が得意ではない男性に向けた夕食を選んでくれるアプリです。
家族のために夕食を作る機会があった時、すぐに調理を開始できない問題を解決しようと思いこのアプリを作成しました。
このアプリがあれば登録したレシピの中からメイン、サラダ、スープの３項目のメニューを提案してくれます。
また作った料理を振り返ることで自分の上達に気づくことができ、料理をすることが楽しくなっていきます。
<!-- 他のユーザーの投稿をみることであなたの料理の幅を広げることもできます。 -->
＊メイン、サラダ、スープの３項目を揃えることができるとバランスの良い夕食に思ってもらえると考えているのでこの３項目を出力することにしています。
# DEMO

https://gyazo.com/fed230acc15d22aa112261060a685799
https://gyazo.com/63cf5115bcefd39cd7ee9fcc737fbeb7
https://gyazo.com/b3ec54e3621e1799f53b166888749325
https://gyazo.com/ad857e525797b3f9ae650c017baf7c34


https://gyazo.com/3347a589cba058d4c718e85cb196eb17
https://gyazo.com/67cbf22f886807dbf0b5fe4fa43d882c
https://gyazo.com/b33931c4c4fdec7bc2129c7438f848a9

# 工夫したポイント

# 開発環境
Ruby/Ruby on Rails/MySQL/Github/AWS/Visual Studio Code

# 今後実装したい機能
・調理した日付や調理にかかった時間を画像や感想と一緒に保存する機能の追加  
・ユーザー管理機能の実装

# DB設計

## users テーブル

| Column                | Type   | Options                   |
| --------------------- | ------ | ------------------------- |
| nickname              | string | null: false               |
| email                 | string | null: false, unique: true |
| encrypted_password    | string | null: false               |

### Association

- has_many   : menus
- has_many   : dinners


## menus テーブル

| Column       | Type       | Options                       |
| ------------ | ---------- | ----------------------------- |
| main_name    | string     | null: false                   |
| main_recipe  | text       |                               |
| main_genre   | string     |                               | 
| salad_name   | string     | null: false                   | 
| salad_recipe | text       |                               | 
| salad_genre  | string     |                               |
| soup_name    | string     | null: false                   | 
| soup_recipe  | text       |                               |  
| soup_genre   | string     |                               |
| user         | references | null: false, foreign_key:true |


### Association

- belongs_to : user
- belongs_to : dinner


## dinners テーブル

| Column     | Type       | Options                       |
| ---------- | ---------- | ----------------------------- |
| impression | text       |                               |
| user       | references | null: false, foreign_key:true |
| menu       | references | null: false, foreign_key:true |

//imageはActiveStorageで実装

### Association

- belongs_to :user
- belongs_to :menu





