class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.float :total
      t.references :user, null: false, foreign_key: true
      t.datetime :order_date
      t.boolean :done

      t.timestamps
    end
  end
end
