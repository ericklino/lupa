class Mark < ActiveRecord::Base
  has_many :devices
  validates :name, presence: true

  end
