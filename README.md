# README
料理が得意ではない男性に向け夕食提案アプリD.maker
もしあなたが誰かのために日常的に夕食を作る機会があった時、すぐに調理を開始できますか？
料理に慣れていない男性はまずメニューを決めることに時間をとられてしまうと思います。
このアプリがあれば登録したレシピの中からメイン、サラダ、スープの３項目を選び、あなたに提案してくれます。
作った夕食の写真を撮影し、記録していきます。作った料理を振り返ることで自分の上達に気づくことができ、料理をすることが楽しくなっていきます。
また、他のユーザーの投稿をみることであなたの料理の幅を広げることもできます。

このアプリを使って料理上手を目指してみませんか？

＊メイン、サラダ、スープの３項目を揃えることができるとバランスの良い夕食に思ってもらえると考えているのでこの３項目出力することにしています。



# テーブル設計

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
| main_recipe  | text       | null: false                   |
| main_genre   | string     | null: false                   | 
| salad_name   | string     | null: false                   | 
| salad_recipe | text       | null: false                   | 
| salad_genre  | string     | null: false                   |
| soup_name    | string     | null: false                   | 
| soup_recipe  | text       | null: false                   |  
| soup_genre   | string     | null: false                   |
| user         | references | null: false, foreign_key:true |


### Association

- belongs_to : user
- belongs_to : dinner


## dinners テーブル

| Column     | Type       | Options                       |
| ---------- | ---------- | ----------------------------- |
| cookday    | date       | null: false                   |
| impression | text       |                               |
| cooktime   | time       | null: false                   |
| user       | references | null: false, foreign_key:true |
| menu       | references | null: false, foreign_key:true |

//imageはActiveStorageで実装

### Association

- belongs_to :user
- belongs_to :menu





