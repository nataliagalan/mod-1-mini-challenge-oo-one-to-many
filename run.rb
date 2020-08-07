require 'pry'
require_relative "./models/menu_item"
require_relative "./models/restaurant"

# code tests below

# Restaurant - initialize with name, cuisine
testo_restaurant = Restaurant.new('Testo', 'Italian')
suzume_restaurant = Restaurant.new('Suzume', 'Filipino')

# MenuItem - initialize with restaurant, dish_name, price
# we expect each MenuItem to remember its restaurant.
# to do so, we pass its Restaurant instance as argument
lasagna = MenuItem.new(testo_restaurant, 'Lasagna', 13)
pasta_carbonara = MenuItem.new(testo_restaurant, 'Pasta Carbonara', 11)

ramen = MenuItem.new(suzume_restaurant, 'Ramen', 12)

# p suzume_restaurant.print_menu
# p testo_restaurant.print_menu

# p veg_ramen = suzume_restaurant.add_menu_item('Vegetarian Ramen', 11)

# p veg_carbonara = testo_restaurant.add_menu_item('Vegetarian Carbonara', 11)
# p vegan_carbonara = testo_restaurant.add_menu_item('Vegan Carbonara', 22)

# p testo_restaurant.menu_items
# p suzume_restaurant.menu_items
# lasagna.dish_name
# ramen.restaurant
# pasta_carbonara.price
# pasta_carbonara.price = 8
# pasta_carbonara.price
# MenuItem.all
# p lasagna.restaurant_name

# Restaurant.biggest_menu

  # binding.pry
#"pls"