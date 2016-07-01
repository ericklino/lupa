class Device < ActiveRecord::Base
  include SearchCop
  mount_uploader :phone_img, CellImageUploader

  belongs_to :mark
  has_many :evaluations
  validates :phone_img, :model_device, :processor, :os, :size_device, :type_device, :mark, presence:true

  # Implementation search with gem searchcop
  search_scope :search do
    attributes :model_device, :processor, :os, :type_device
  end

  # def self.search(search)
  #   where("model_device like ?", "%#{search}%")
  # end

end
