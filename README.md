# picapp-30464

## 概要
- お子様をお持ちの方のための交流ツール
- お子様の記録を残すためのアプリ

## URL
[picapp-30464](https://picapp-30464.herokuapp.com/)

 ## テスト用アカウント
 `basic認証`
 - username: admin
 - password: 2222

`ログインパスワード`
 - email address: aaa@gmail.com
 - password: 111111a

 ## 利用法
 - 新規登録ボタンを押し会員登録
 - トップページから色々な人の投稿を閲覧
 - マイページに行き自分が投稿した写真を閲覧
 - マイページから写真を新規投稿
 - マイページの詳細から投稿内容を編集
 - 悩み相談ページで相談を投稿
 - 色々な人にアドバイスをもらう
 - 他の人の相談を閲覧しアドバイスができる

## 目指した課題解決
- 子供の成長の記録を一つのところに収めたい
- 周りに相談しずらい悩みを誰かに相談したい
- 知らない情報を簡単に収集したい

## 洗い出した要件
- ユーザー管理機能の実装
- トップページの実装
- マイページ実装
 - 新規投稿ページの実装
 - 投稿詳細ページ
 - 投稿編集ページ
- 相談ページトップ
 - 相談新規投稿ページ
 - 相談詳細ページ
- 商品ページ
- (追加)
-
-

## 実装した機能についてのGIFと説明

<br>

1. ログインをして入るとマイページとログアウトのボタンがついており、
   ログアウトを押すとログインボタンと新規登録ボタンに変わります。

<br>

[![Image from Gyazo](https://i.gyazo.com/b36d4b226ea11f02674ee05a9c9fb849.gif)](https://gyazo.com/b36d4b226ea11f02674ee05a9c9fb849)

<br>

2. 写真を投稿するとトップページに投稿されます。
   マイページでは現ユーザーの投稿したもののみが閲覧できます。

<br>

[![Image from Gyazo](https://i.gyazo.com/9410fd83d2841ffebf56df305bec59b3.gif)](https://gyazo.com/9410fd83d2841ffebf56df305bec59b3)

<br>

3. 相談内容を投稿できます。投稿したものは相談の一覧ページに表示され、
   クリックするとコメントを投稿できるようになています。

<br>

[![Image from Gyazo](https://i.gyazo.com/b75fa54aed5eb4a3ac924d982572bd94.gif)](https://gyazo.com/b75fa54aed5eb4a3ac924d982572bd94)




## 実装予定の機能
- 記事検索機能
- snsアカウント登録機能
- エラーページ実装
- ぱんくず機能実装
- kaminariページネーション実装
- 検索機能2 Ransack
- (rspec追加)
- 商品ページ作成


## データベース設計

### Users

|Column              |Type     |Options                |
|--------------------|---------|-----------------------|
| nickname           | string  | null:false            |
| password           | string  | null:false            |
| email              | string  | null:false            |
| birthday           | date    | null:false            |

- has_many :albums
- has_many :advises
- has_many :answers


### Albums

|Column          |Type         |Options                |
|----------------|-------------|-----------------------|
| user           | references  | null:false, foreign_key: true |
| title          | text        | null:false            |
| text           | text        | null:false            |

- belongs_to :user


### Advises 

|Column          |Type         |Options                |
|----------------|-------------|-----------------------|
| user           | references  | null:false, foreign_key: true |
| text           | text        | null:false            |

- has_many :answers
- belongs_to :user


### answers

|Column          |Type     |Options                |
|----------------|---------|-----------------------|
| user           | references | null:false, foreign_key: null|
| advise         | references | null:false, foreign_key: null|
| text           | text | null:false            |

- belongs_to :user
- belongs_to :advise


### ローカルでの動作方法

1. 

```
git clone https://github.com/sumi04239/picapp.git

```
2. 

```

cd picapp

```
3. 

```

bundle install

```

4. 

```
yarn install

```

5. gemを追加

```
gem 'date_validator'
gem 'devise'
gem 'kaminari'
gem 'pry-rails'
gem 'rails-i18n'
gem 'valid_email2'
gem 'mini_magick'
gem 'image_processing', '~>1.2'


group :development, :test do
  gem 'factory_bot_rails'
  gem 'faker'
  gem 'rspec-rails'
end

group :production do
  gem 'rails_12factor'
end

```

6. 

```
bundle install

```

7. 

```

rails db:create

```

8. 

```

rails db:migrate

```

9. 

```

rails s

```
