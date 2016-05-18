class Question < ActiveRecord::Base

 enum type_question:  [:accessibility, :usability]
  belongs_to :category
  # belongs_to :kind
  has_and_belongs_to_many :alternatives
  has_and_belongs_to_many :evaluations

  validates :enunciation, :type_question, :category, presence:true
end
