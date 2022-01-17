class CreateInventories < ActiveRecord::Migration[7.0]
  def change
    create_table :inventories do |t|
      t.string :item
      t.string :SKU

      t.timestamps
    end
  end
end
