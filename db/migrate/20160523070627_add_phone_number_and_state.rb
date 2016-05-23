class AddPhoneNumberAndState < ActiveRecord::Migration
  def change
    add_column :users, :state, :string
    add_column :users, :phone_number, :string
  end
end
