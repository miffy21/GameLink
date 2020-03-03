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
			image:open("#{Rails.root}/public/seed_image/seed-mh1.jpg"),
			image2:open("#{Rails.root}/public/seed_image/seed-mh2.png"),
			image3:open("#{Rails.root}/public/seed_image/seed-mh3.png"),
			image4:open("#{Rails.root}/public/seed_image/seed-mh4.png"),
		  image5:open("#{Rails.root}/public/seed_image/seed-mh5.png"),
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
			image:open("#{Rails.root}/public/seed_image/seed-bhz2.jpg"),
			image2:open("#{Rails.root}/public/seed_image/seed-bhz1.jpg"),
			image3:open("#{Rails.root}/public/seed_image/seed-bhz3.jpg"),
			image4:open("#{Rails.root}/public/seed_image/seed-bhz4.jpg"),
		  image5:open("#{Rails.root}/public/seed_image/seed-bhz5.jpg"),
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
			image:open("#{Rails.root}/public/seed_image/seed-rmz1.jpg"),
			image2:open("#{Rails.root}/public/seed_image/seed-rmz2.jpg"),
			image3:open("#{Rails.root}/public/seed_image/seed-rmz3.png"),
			image4:open("#{Rails.root}/public/seed_image/seed-rmz4.jpg"),
		  image5:open("#{Rails.root}/public/seed_image/seed-rmz5.png"),
      copyright1:'http://www.capcom.co.jp',
      copyright2:'http://www.capcom.co.jp',
      copyright3:'http://www.capcom.co.jp',
      copyright4:'http://www.capcom.co.jp',
      copyright5:'http://www.capcom.co.jp',
      created_at:'2020/02/13 17:00',
		},
	]
	)






















