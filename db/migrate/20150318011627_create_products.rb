class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.references :store, index: true
      t.string :product_name

      t.timestamps
    end
    add_foreign_key :products, :stores
  end
end
