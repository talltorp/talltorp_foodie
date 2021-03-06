require 'active_support/inflector'

module TalltorpFoodie
  class Foodie
    def self.portray(food)
      if food.downcase == "broccoli"
        "Gross!"
      else
        "Delicious!"
      end
    end

    def self.pluralize(food)
      food.pluralize
    end
  end
end