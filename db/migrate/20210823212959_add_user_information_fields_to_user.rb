class AddUserInformationFieldsToUser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :name, :string 
    add_column :users, :surname, :string
    add_column :users, :username, :string
    add_column :users, :phone, :integer
    add_column :users, :address, :string
    add_column :users, :city, :string
    add_column :users, :state, :string
    add_column :users, :zipCode, :integer
  end
end
