# README

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
- belongs_to :dinner





