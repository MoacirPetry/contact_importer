require 'csv'

class Contact < ApplicationRecord
  belongs_to :user
  validates :name, :date_of_birth, :phone, :address, :credit_card, :franchise, :email, :user, presence: true
 
  def self.import(file, current_user)
    CSV.foreach(file.path, headers: true) do |row|
      # Contact.create! row.to_hash
      Contact.create(
        name: row[0],
        date_of_birth: row[1],
        phone: row[2],
        address: row[3],
        credit_card: row[4],
        franchise: 'Master Card',
        email: row[5],
        user: current_user
      )
    end
  end

end
