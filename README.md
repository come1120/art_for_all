## 🌐 App 
Art for All
　
## 💬 概要
  コロナ禍における、芸術、文化に関わる、一人一人が自らの声と意思を表明場所。
「美術への対策要請書」の紹介、およびメンバーシップへの参加、そして、メンバーである人々の交流の場としてのウェブサイトを制作しました。

## 🖼 制作背景(意図)
　今年に入ってから、私自信を含む多くの人を悩ませたコロナ危機のなかで、美術に携わる人々からの具体的な意思表明は、ほとんどありませんでした。しかし、一部の活動家の中から声が上がりはじめ、私の耳にも届いた時、『これは、不要では無いだろうけど、不急ではないか？』と複雑な気持ちになりました。
　そこで、声を形にする意思表明としてのサイトと、賛同する人々のためのコミュニティスペースが一緒になったウェブサイトがあったらいいのに、そう思って制作しました。

## 💻使用技術・本番環境
ruby on rails,haml,scss,github,mySQL

デプロイはまだ行っていません。

## DEMO

https://i.gyazo.com/1706d68818c520ae26e6bdc77a6495f5.mp4
https://i.gyazo.com/4c335c9ed90294aaf146e16ec1272790.mp4
https://i.gyazo.com/c2e21cff1898b32fbb66b5791061ebc2.mp4


##　DB設計

usersテーブル

|Column|Type|Options|
|------|----|-------|
|email|string|null: false,index: true|
|work|string|null: false|
|birth_year|integer|null: false|
|password|string|null: false,index: true|
|name|string|null: false, index: true|

### Association
- has_many :messages

messsagesテーブル

|Column|Type|Options|
|------|----|-------|
|content|string|
|user_id|integer|null: false, foreign_key: true|

### Association
- belongs_to :user


## 今後の課題

jsを実装して動的なサイトにしたいとおもいます。非同期更新など。
ユーザーページなども作りたいと思います。