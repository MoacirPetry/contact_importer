class CreateContacts < ActiveRecord::Migration[5.2]
  def change
    create_table :contacts do |t|
      t.string :name
      t.date :date_of_birth
      t.string :phone
      t.string :address
      t.integer :credit_card
      t.string :franchise
      t.string :email
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
