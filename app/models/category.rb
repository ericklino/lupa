class Category < ActiveRecord::Base
  has_many :questions



validates :description, presence: true
end
