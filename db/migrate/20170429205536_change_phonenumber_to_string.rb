class ChangePhonenumberToString < ActiveRecord::Migration[5.0]
  def change
    change_column :users, :phonenumber, :string
  end
end
