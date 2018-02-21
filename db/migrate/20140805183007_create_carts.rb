class CreateCarts < ActiveRecord::Migration
  def up
    create_table :carts do |t|
      t.string :status
    end
  end
  
  def down
    drop_table :carts
  end
end
