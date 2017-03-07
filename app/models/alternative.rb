class Alternative < ActiveRecord::Base
  enum type_alternative:  %w(accessibility usability)
  has_and_belongs_to_many :questions

  validates :description, :weight, presence: true

  def name
    description
  end


end
