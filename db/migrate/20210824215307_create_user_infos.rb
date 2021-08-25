class CreateUserInfos < ActiveRecord::Migration[6.0]
  def change
    create_table :user_infos do |t|
      t.string :name
      t.string :surname
      t.string :username
      t.integer :phone
      t.string :address
      t.string :city
      t.string :state
      t.integer :zipCode
      t.belongs_to :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
