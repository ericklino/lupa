class Category < ActiveRecord::Base
  validates :description, presence: true
  has_many :questions

  def name
      description
  end

end
