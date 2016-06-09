class Diagnostic < ActiveRecord::Base
  enum type_diagnostic:  %w(accessibility usability)

  belongs_to :evaluation
  validates :description, :score, presence: true

  def self.result (s, t)
    result = where('score <= ?', s).where('type_diagnostic = ?', t).first
    result.try(:description)
  end
end
