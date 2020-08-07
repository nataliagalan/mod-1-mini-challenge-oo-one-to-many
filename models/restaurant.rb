class Restaurant
  attr_reader :name, :cuisine
  attr_accessor :dish_name, :price

  @@all = []
  @@menu_items = []
  
  def initialize(name, cuisine)
    @name = name
    @cuisine = cuisine
    @@all << self
  end

  def self.all
    @@all
  end

  def menu_items
      MenuItem.all.select do |menu_item_instance|
        # binding.pry
        if menu_item_instance.restaurant.name == self.name
        @@menu_items << menu_item_instance
        end
      end

    @@menu_items.uniq
  end

  def add_menu_item(dish_name, price)
    @dish_name = dish_name
    @price = price

    MenuItem.all.select do |menu_item_instance|
      if menu_item_instance.restaurant.name == self.name
        @menu_item_instance = menu_item_instance
      end
    end

    MenuItem.new(@menu_item_instance.restaurant.name, dish_name, price)
  end
 
  def print_menu
    MenuItem.all.select do |menu_item_instance|
      if menu_item_instance.restaurant.name == self.name
        puts "#{ menu_item_instance.dish_name }: $#{ menu_item_instance.price }"
      end
    end
  end

# to be continued ...
#   def self.biggest_menu
# # find out total menu items for each restaurant instance 
# # for that .size
#   self.all.map do |restaurant_instance|
#     @restaurant_instance = restaurant_instance
#     MenuItem.all.map do |menu_item_instance|
#       menu_item_instance.restaurant == restaurant_instance
#     end

#   end
#   p @restaurant_instance.menu_items.size
# # compare and find max
# # return the restaurant with most items
#   end

end # end of Restaurant class
