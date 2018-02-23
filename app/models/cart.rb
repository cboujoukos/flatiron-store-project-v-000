class Cart < ActiveRecord::Base
  has_many :line_items
  has_many :items, through: :line_items
  belongs_to :user

  def total
    total = 0
    line_items.each do |line_item|
      total += line_item.item.price * line_item.quantity
    end
    total
  end

  def add_item(item_id)
    #binding.pry
    if line_items.find_by(item_id: item_id)
      line_item = line_items.find_by(item_id: item_id)
      line_item.quantity+=1
      line_item
    else
      line_item = line_items.build(item_id: item_id)
    end
  end
end
