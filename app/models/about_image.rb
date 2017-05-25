class AboutImage < ApplicationRecord
  mount_uploader :image, AboutUploader

  validates :image, presence: true

  belongs_to :about

  def show
    image
  end
end
