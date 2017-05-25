class Slide < ApplicationRecord
  mount_uploader :image, SlideUploader
  validates :title, :image, presence: true
end
