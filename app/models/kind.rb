class Kind < ActiveRecord::Base
#has_many :questions
enum description: %w(accessibility usability)
has_many :alternatives

def name
  description
end

validates :description, :presence => true

end
