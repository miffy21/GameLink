class Content < ApplicationRecord
  belongs_to :genre
  mount_uploader :image, ImageUploader
  has_many :comments
end
