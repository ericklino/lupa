class Alternative < ActiveRecord::Base
  has_and_belongs_to_many :questions
  belongs_to :kind
end
