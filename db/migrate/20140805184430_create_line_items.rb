class CreateLineItems < ActiveRecord::Migration
  def up
    create_table :line_items do |t|
      t.integer :quantity, default: 1 
      t.belongs_to :cart
      t.belongs_to :item
    end
  end

  def down
    drop_table :line_items
  end
end
