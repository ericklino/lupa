class Question < ActiveRecord::Base
  belongs_to :category
  # belongs_to :kind
  has_and_belongs_to_many :alternatives
  has_and_belongs_to_many :evaluations
end
