# テーブル設計

##users

| Column             | Type   | Options                   |
| ------------------ | ------ | ------------------------- |
| email              | string | null: false, unique: true |
| encrypted_password | string | null: false               |
| name               | string | null: false               |
| profile            | text   | nill: false               |
| occupation         | text   | nill: false               |
| position           | text   | nill: false               | 

### Association
- has_many :prototypes
- has_many :comments

## prototypes

| Column     | Type         | Options                        |
| ---------- | ------------ | ------------------------------ |
| title      | string       | null: false                    |
| catch_copy | text         | null: false                    |
| concept    | text         | null: false                    |
| user       | references   | nill: false, foreign_key: true |

### Association

- belong_to :user
- has_many :comments

## comments

| Column    | Type       | Options                        |
| --------- | ---------- | ------------------------------ |
| content   | text       | null: false                    |
| prototype | references | null: false                    |
| user      | references | nill: false, foreign_key: true |

### Association

- belongs_to :user
- belongs_to :prototype
