class Nikki < ActiveRecord::Base
  mount_uploader :picture, PictureUploader
  validates :title, presence: true
  validates :description, presence: true
end
