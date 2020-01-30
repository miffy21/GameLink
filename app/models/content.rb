class Content < ApplicationRecord
  belongs_to :genre
  mount_uploader :image, ImageUploader
end
