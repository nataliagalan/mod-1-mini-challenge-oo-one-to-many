class MenuItem
    attr_reader :dish_name, :restaurant
    attr_accessor :price

    @@all = []

    def initialize(restaurant, dish_name, price)
        @restaurant = restaurant
        @dish_name = dish_name
        @price = price

        @@all << self
    end

    def self.all
        @@all
    end

    def restaurant_name
        MenuItem.all.select do |menu_item_instance|
        menu_item_instance.restaurant.name == self.restaurant.name
        end
     self.restaurant.name
    end


end # end of MenuItem class