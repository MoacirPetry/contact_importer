class ChangeCreditCardInContact < ActiveRecord::Migration[5.2]
  def change
    change_column :contacts, :credit_card, :integer, limit: 8
  end
end
