# README

# アプリケーション名

ゲーム総合情報サイト - GAME LINK[ゲームリンク]
 
# 概要
 
![Uploading README_image.png…]() 

ゲームの情報まとめアプリです。
管理者が記事を投稿。
利用者が記事を閲覧することが最新のゲーム情報をキャッチアップできます。
ログインなしでも記事を閲覧することが可能で、
ログインすることでいいね、コメント投稿、ユーザーフォロー機能が解放されます。
 
## 機能

共通機能
┗記事投稿、削除、編集機能（gem 'Activ admin'）
┗画像投稿機能 (gem 'refile','carrierwave')
┗ログイン機能 (gem 'devise')
┗ナビ表示分岐機能 (if 条件分岐)
┗記事の検索機能 (メソッド定義　search)
┗バリデーション機能 (if 条件分岐)
┗エラーメッセージ表示機能 (flash)
┗最新記事のスライダー機能 (bootstrap)
┗いいね数に基づいたランキング機能
┗Amazonアソシエイト機能

TOPページ　(root contents)
┗記事一覧表示 (contents/index)
┗ジャンル機能 
┗ジャンルソート機能
┗投稿時間"〇〇時間前"表示機能 (time_ago_in_words)
┗コメント投稿数表示機能 (.count)
┗ページネーション機能 (gem 'kaminari')

記事詳細　（contents）
┗記事の詳細表示
┗いいね機能（非同期）
┗コメント投稿機能 
┗コメント削除機能

ユーザー　（users)
┗ユーザー一覧機能（users/index）
┗フォロー機能 (users/following followers)
┗いいねした記事一覧表示機能
┗プロフィール編集機能 (gem 'devise')
┗退会機能 (gem 'devise','refile')
 
## 使い方
 
1. ログインしなくても全ての記事の閲覧ができます。最新のゲーム情報をキャッチアップしましょう！
2. topページではジャンル（ゲームハード名）のボタンを押すとその記事に登録したジャンルのみみソートされて表示されます。
3. 右上の検索フォームで特定の記事を検索することもができます。
4. 記事をクリックすると詳細が閲覧できます。ログインしている場合、機能が拡張され、記事へのいいね機能、コメント機能がアンロックされます！
5. いいねは記事ごとに集計され、記事のランキングに反映されます。（※ユーザ　一人に対し1いいねしか押せません。）
6. 投稿したコメントは投稿したユーザーのみ削除することができます。
7. 他のユーザーをクリックすると　そのユーザーの好みのジャンルやいいねした記事の一覧が閲覧できます。
9. 気に入ったユーザーがいればフォローすることができます。
8. フォローリスト、フォロワーリストはサイドバーのプロフィールから確認できます。
9. ユーザー詳細ページからログインパスワードの変更と退会ができます。退会するとアカウントが削除され、いいねやフォロー数など他のコンテンツに影響します。

## インストール
 
```
$ git clone https://github.com/miffy21/GameLink/awesome-tool
$ cd awesome-tool
$ sh setup.sh
$ ~do anything~
```
 
## デプロイ
 
1. AWS (EC2,RDS,ELB)
2. データベース (MySQL)
3. WEBサーバ (Nginx)
 
## 作者
 
島崎　啓太
mail to: onini21@gmail.com
 