class Kind < ActiveRecord::Base
#has_many :questions
has_many :alternatives

def name
  description
end

validates :description, :presence => true

end
