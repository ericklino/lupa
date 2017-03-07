class Category < ActiveRecord::Base
  validates :description, presence: true
  has_many :questions

  def name
      description
  end

  def self.include_category
    category = Category.order(:id)
    category.includes(:questions).order(:id)
  end

end
