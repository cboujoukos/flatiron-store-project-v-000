class AddCurrentCartColumnToUsers < ActiveRecord::Migration
  def up
    add_column :users, :current_cart_id, :integer
  end
  def down
    remove_column :users, :curent_cart_id
  end
end
