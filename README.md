# :sparkles::sparkles:picapp-30464:sparkles::sparkles:

# 概要 
- お子様をお持ちの方のための交流ツール
- お子様の記録を残すためのアプリ

## 制作背景(意図)

- 友人が出産をしたということから始まりました。
- 周りに子供を育てる知識などを持っている人がいなかったりなかなか悩んでいることを相談できないという人が相談、意見交換をすることができ、同じ境遇の女性の役に立つのではないかという考えから作成しようと考えました。
- さらにこれから作成する予定の商品ページなどは子育てをする上で役に立つ商品情報などを意見交換をするとより役立つアプリになるのではないかと考えています。

## 目指した課題解決
- 子供の成長の記録を一つのところに収めたい
- 周りに相談しずらい悩みを誰かに相談したい
- 知らない情報を簡単に収集したい

## URL
[picapp-30464](https://picapp-30464.herokuapp.com/)

<br>
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
- (追加実装)
- kaminariページネーション実装
- 記事検索機能
- ぱんくず機能実装
- レスポンシブデザイン
- いいね機能の実装


## DEMO(実装した機能についてのGIFと説明)

<br>

1. ログインをして入るとマイページとログアウトのボタンがついており、

   ログアウトを押すとログインボタンと新規登録ボタンに変わります。

<br>

[![Image from Gyazo](https://i.gyazo.com/b82130686ac6a2f036ebcd8deab9b7d6.gif)](https://gyazo.com/b82130686ac6a2f036ebcd8deab9b7d6)

<br>

2. 写真を投稿するとトップページに投稿されます。

   マイページでは現ユーザーの投稿したもののみが閲覧できます。

<br>


[![Image from Gyazo](https://i.gyazo.com/5076d3e4bdf4ee8e4c6d00b4dc9d3d56.gif)](https://gyazo.com/5076d3e4bdf4ee8e4c6d00b4dc9d3d56)
df90c3ee294c910f3123012f7b4243353933c

<br>

3. 相談内容を投稿できます。投稿したものは相談の一覧ページに表示され、

   クリックするとコメントを投稿できるようになっています。

<br>

[![Image from Gyazo](https://i.gyazo.com/b75fa54aed5eb4a3ac924d982572bd94.gif)](https://gyazo.com/b75fa54aed5eb4a3ac924d982572bd94)

<br>

4. 検索機能：検索したいキーワードを入力するとそのキーワードについたtitleを検索することができます。

<br>

[![Image from Gyazo](https://i.gyazo.com/01f0c8784544ba57ddc2ffad0080dd8b.gif)](https://gyazo.com/01f0c8784544ba57ddc2ffad0080dd8b)

<br>

5. ぱんくず機能を使用し、現在いるであろうページの場所との確認を可能にて移動をしやすくしました。

<br>

[![Image from Gyazo](https://i.gyazo.com/11910569abb72fa69d7ed24b07c38729.gif)](https://gyazo.com/11910569abb72fa69d7ed24b07c38729)

<br>

6. 投稿の詳細ページにはいいね機能を実装しました

[![Image from Gyazo](https://i.gyazo.com/8463f772225796611776fbd9f84a8db3.gif)](https://gyazo.com/8463f772225796611776fbd9f84a8db3)


## こだわった点

- headerのボタン部分は固定しスクロールしてもいつでも違うぺージに飛べるようにしました。

<br>

[![Image from Gyazo](https://i.gyazo.com/b82130686ac6a2f036ebcd8deab9b7d6.gif)](https://gyazo.com/b82130686ac6a2f036ebcd8deab9b7d6)

ログアウトをすると右側にログインと新規登録のボタンが出てきます。↓

[![Image from Gyazo](https://i.gyazo.com/c144c0d60fe3ae43de6a8d658994345d.png)](https://gyazo.com/c144c0d60fe3ae43de6a8d658994345d)


<br>

- 閲覧したい投稿をキーワードで検索することができるようにトップページに検索機能を実装しました。

<br>

[![Image from Gyazo](https://i.gyazo.com/d28e56b3f66c98d0374b6cea6cdeccc1.png)](https://gyazo.com/d28e56b3f66c98d0374b6cea6cdeccc1)

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
- has_many :likes


### Albums

|Column          |Type         |Options                |
|----------------|-------------|-----------------------|
| user           | references  | null:false, foreign_key: true |
| title          | text        | null:false            |
| text           | text        | null:false            |

- belongs_to :user
- has_one_attached :image
- has_many :likes


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


### likes

|Column          |Type     |Options                |
|----------------|---------|-----------------------|
| user           | references | foreign_key: null|
| advise         | references | foreign_key: null|

- belongs_to :user
- belongs_to :album


## ER図

[![Image from Gyazo](https://i.gyazo.com/c1079562c2625b880513d2e2f09bac87.png)](https://gyazo.com/c1079562c2625b880513d2e2f09bac87)
