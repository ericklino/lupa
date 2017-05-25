class Diagnostic < ActiveRecord::Base
  enum type_diagnostic:  %w(accessibility usability)

<<<<<<< HEAD

  validates :name, :description, :score, presence: true
=======
  
  validates :description, :score, presence: true
>>>>>>> 06bd80de00265842297bfebf74763c7eea639716

  def self.result (s, t)
    result = where('score <= ?', s).where('type_diagnostic = ?', t).first
    result.try(:description)
  end
<<<<<<< HEAD

  def self.count (s, t)
    result = where('score <= ?', s).where('type_diagnostic = ?', t).count
    result.try(:description)
  end
=======
>>>>>>> 06bd80de00265842297bfebf74763c7eea639716
end
