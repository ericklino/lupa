class About < ApplicationRecord
  validates :title, :content, presence: true
  has_many :about_images, dependent: :destroy

  accepts_nested_attributes_for :about_images, allow_destroy: true

  def images
    about_images
  end
end
