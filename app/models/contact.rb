class Contact < ApplicationRecord
  belongs_to :user
  validates :name, :date_of_birth, :phone, :address, :credit_card, :franchise, :email, :user, presence: true
end
