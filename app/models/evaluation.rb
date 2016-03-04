class Evaluation < ActiveRecord::Base

  has_and_belongs_to_many :questions
  belongs_to :device
  belongs_to :user
  has_one :diagnostic
end
