class Diagnostic < ActiveRecord::Base
  belongs_to :evaluation



  validates :description, :score, presence: true
end
