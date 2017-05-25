class Diagnostic < ActiveRecord::Base
  enum type_diagnostic:  %w(accessibility usability)


  validates :name, :description, :score, presence: true

  def self.result (s, t)
    result = where('score <= ?', s).where('type_diagnostic = ?', t).first
    result.try(:description)
  end

  def self.count (s, t)
    result = where('score <= ?', s).where('type_diagnostic = ?', t).count
    result.try(:description)
  end
end
