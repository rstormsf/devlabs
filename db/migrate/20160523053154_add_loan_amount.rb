class AddLoanAmount < ActiveRecord::Migration
  def change
     add_column :users, :loan_amount, :string
  end
end
