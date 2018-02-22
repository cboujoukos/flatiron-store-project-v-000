class CreateCarts < ActiveRecord::Migration
  def up
    create_table :carts do |t|
      t.string :status
      t.belongs_to :user
    end
  end

  def down
    drop_table :carts
  end
end
