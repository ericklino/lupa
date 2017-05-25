class Contact < ApplicationRecord
  validates :name, :email, :phone, :message, :subject, presence: true
end
