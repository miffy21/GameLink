# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Faker::Config.locale = :ja

AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?

Genre.create!(
	[
	{
		name: 'PS4',
		},
		{
		name: 'Switch',
		},
		{
		name: '3DS',
		},
		{
		name: 'モバイル系',
		},
		{
		name: 'PCゲーム',
		},
		]
		)

Content.create!(
	[
		{
			genre_id:'1',
			name:'『モンスターハンターワールド：アイスボーン』狩王決定戦 2019-2020。2020年3月21日（土）決勝大会クエスト情報を公開！',
			main_content:'「モンスターハンターフェスタ’19-’20」の目玉コンテンツであり、最速ハンターの頂点“狩王”を目指して全国のハンター達が己の腕を競い合う「モンスターハンターワールド：アイスボーン　狩王決定戦 2019-2020」決勝大会が2020年3月21日（土）に開催！　その決勝大会のクエストの詳細情報を公開！',
			sub_content:'名称：『モンスターハンターワールド：アイスボーン』狩王決定戦 2019-2020 日時： 東日本大会：2019年11月24日（日）※開催済み 西日本大会：2020年1月19日（日）※開催済み 決勝大会／当日最終予選：2020年3月21日（土）都内某所にて開催',
			image:open("#{Rails.root}/db/seed_image/seed-mh1.jpg"),
			image2:open("#{Rails.root}/db/seed_image/seed-mh2.png"),
			image3:open("#{Rails.root}/db/seed_image/seed-mh3.png"),
			image4:open("#{Rails.root}/db/seed_image/seed-mh4.png"),
		    image5:open("#{Rails.root}/db/seed_image/seed-mh5.png"),
            copyright1:'http://www.capcom.co.jp',
            copyright2:'http://www.capcom.co.jp',
            copyright3:'http://www.capcom.co.jp',
            copyright4:'http://www.capcom.co.jp',
            copyright5:'http://www.capcom.co.jp',
            created_at:'2020/02/13 16:05',
		},
		{
			genre_id:'1',
			name:'『バイオハザード RE:3』新ステージ“カジノ”と“廃遊園地”が公開！ 新たなマスターマインドも紹介',
			main_content:'新たなステージ、新たなマスターマインドが出現！　『バイオハザード レジスタンス』',
			sub_content:'2020年4月3日の発売が迫る『バイオハザード RE:3』。 　今報ではキャンペーンと併せて収録されている“非対称対戦サバイバルホラー”。 　意図せず拉致されてきたサバイバーたち。 　彼らをどのようなステージ、そしてどのようなマスターマインドが待ち受けるのだろうか？',
			image:open("#{Rails.root}/db/seed_image/seed-bhz1.jpg"),
			image2:open("#{Rails.root}/db/seed_image/seed-bhz2.jpg"),
			image3:open("#{Rails.root}/db/seed_image/seed-bhz3.jpg"),
			image4:open("#{Rails.root}/db/seed_image/seed-bhz4.jpg"),
		    image5:open("#{Rails.root}/db/seed_image/seed-bhz5.jpg"),
            copyright1:'http://www.capcom.co.jp',
            copyright2:'http://www.capcom.co.jp',
            copyright3:'http://www.capcom.co.jp',
            copyright4:'http://www.capcom.co.jp',
            copyright5:'http://www.capcom.co.jp',
            created_at:'2020/02/13 16:30',
		},
		{
			genre_id:'2',
			name:'「ロックマンゼロ」「ロックマンゼクス」シリーズ全6作品に加え、新要素を搭載して最新ハードに登場！',
			main_content:'「ロックマンX」シリーズに連なる、紅き英雄「ゼロ」の伝説 「ロックマン」シリーズ・「ロックマンX」シリーズの続編として、 青き英雄「エックス」と共に「シグマ」と戦った人気キャラクター「ゼロ」の自らが信じる者のために戦う物語がここにある！',
			sub_content:'「ロックマンX」シリーズから数百年後、伝説のレプリロイド「ゼロ」が活躍する「ロックマン ゼロ」シリーズの全4作品を収録。重厚なストーリーと、ゼットセイバーで敵を両断する爽快感とスピーディーなアクションが魅力だ。 発売日 ： 2020年2月27日（木）発売予定 対応ハード ： PlayStation®4 / Nintendo Switch™ / Xbox One / PC(Steam) ジャンル ： アクション',
			image:open("#{Rails.root}/db/seed_image/seed-rmz1.jpg"),
			image2:open("#{Rails.root}/db/seed_image/seed-rmz2.jpg"),
			image3:open("#{Rails.root}/db/seed_image/seed-rmz3.png"),
			image4:open("#{Rails.root}/db/seed_image/seed-rmz4.jpg"),
		    image5:open("#{Rails.root}/db/seed_image/seed-rmz5.png"),
            copyright1:'http://www.capcom.co.jp',
            copyright2:'http://www.capcom.co.jp',
            copyright3:'http://www.capcom.co.jp',
            copyright4:'http://www.capcom.co.jp',
            copyright5:'http://www.capcom.co.jp',
            created_at:'2020/02/13 17:00',
		},
	]
	)


user_count = User.count
random = Random.new

100.times do |n|
  password = "123456"
  User.create!(email: Faker::Internet.email,
  	           name: Faker::Name.name,
               password: password,
               password_confirmation: password,
               )
end

User.all.each do |user|
	favorite_target = []
		user_count.times do |i|
    		favorite_target << random.rand(1..user_count)
 		end
 	favorite_target.uniq
 	favorite_target.each do |target|
 		Relationship.create!(
 		content_id: target,
 		user_id: user.id
    	)
 	end
 end


User.all.each do |user|
	follow_target = []
		user_count.times do |i|
    		follow_target << random.rand(1..user_count)
 		end
    follow_target.delete(user.id)

    follow_target.uniq
 	follow_target.each do |target|
 		Relationship.create!(
 		follower_id: target,
 		followed_id: user.id
    	)
 	end
 end


content_count = Content.count
50.times do |n|
	content_id = random.rand(1..content_count)
	user_id = random.rand(1..User.count)
	comment = ''
		case random.rand(1..10)
			when 1 then
				comment = '一応買う。'
			when 2 then
				comment = '普通に楽しみの巻'
			when 3 then
				comment = '予約しました!'
			when 4 then
				comment = 'なるほどなー'
			when 5 then
				comment = 'ストーリー知ってるし、PS5で完全版出るまでスルーだわ!'
			when 6 then
				comment = '買います!'
			when 7 then
				comment = '知らなかった〜'
			when 8 then
				comment = '課金要素あるんかこれ'
			when 9 then
				comment = '面白そう!'
			when 10 then
				comment = 'ふーん、一応買うかな!'
		end
	Comment.create!(
		user_id: user_id,
		content_id: content_id,
		comment: comment
		)
end





















