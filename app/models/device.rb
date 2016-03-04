class Device < ActiveRecord::Base
  mount_uploader :phone_img, CellImageUploader

  belongs_to :mark
  has_many :evaluations
end
