class Category < ActiveRecord::Base
  has_many :questions


  def name
      description
  end
validates :description, presence: true
end
