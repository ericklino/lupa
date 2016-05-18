class Kind < ActiveRecord::Base
validates :description, :presence => true


  #has_many :questions
  has_many :alternatives






end
