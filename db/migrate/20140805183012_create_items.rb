class CreateItems < ActiveRecord::Migration
  def up
    create_table :items do |t|
      t.string :title
      t.integer :inventory
      t.integer :price
      t.belongs_to :category
    end
  end

  def down
    drop_table :items
  end
end
