class Question < ActiveRecord::Base

  enum type_question:  %w(accessibility usability)

  belongs_to :category
  belongs_to :quiz

  has_and_belongs_to_many :alternatives

  def name
    enunciation
  end

  def self.include_category
    category = Category.order(:id)
    category.includes(:questions).order(:id)
  end
end
