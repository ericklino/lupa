class Device < ActiveRecord::Base
  mount_uploader :phone_img, CellImageUploader

  belongs_to :mark
  has_many :evaluations



  validates :phone_img, :model_device, :processor, :os, :size_device, :type_device, :mark, presence:true
end
