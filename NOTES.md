

User
  email
  password
  current_cart_id
-has_many carts
-belongs_to current_cart, class_name: 'Cart'

Cart
-has_many line_items
-has_many items through line_items
-belongs_to user
  user_id
  status


Line_item
-belongs_to item
-belongs_to cart
  item_id
  cart_id
  quantity (default: 1)

Item
-belongs_to category
-has_many line_items
-has_many carts through line_items
  title
  price
  inventory
  category_id

Category
-has_many items
  title
