class Content < ApplicationRecord
  belongs_to :genre
  mount_uploader :image, ImageUploader
  mount_uploader :image2, ImageUploader
  mount_uploader :image3, ImageUploader
  mount_uploader :image4, ImageUploader
  mount_uploader :image5, ImageUploader
  has_many :comments
  has_many :favorites, dependent: :destroy

	def favorited_by?(user)
	  favorites.where(user_id: user.id).exists?
  end

  def self.search(search) #self.でクラスメソッドとしている
    if search # Controllerから渡されたパラメータが!= nilの場合は、titleカラムを部分一致検索
      Content.where(['name LIKE ?', "%#{search}%"])
    else
      Content.all #全て表示。
    end
  end

end
