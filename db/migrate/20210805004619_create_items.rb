class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.references :product, null: false, foreign_key: true
      t.integer :quantity, null: false
      t.belongs_to :order, null: false, foreign_key: true

      t.timestamps
    end
  end
end
