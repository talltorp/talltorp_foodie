require 'thor'
require "talltorp_foodie/foodie"
require 'talltorp_foodie/generators/recipe'

module TalltorpFoodie
  class CLI < Thor
    desc "portray ITEM", "Determines if a piece of food is gross or delicious"
    def portray(name)
      puts name
      puts TalltorpFoodie::Foodie.portray(name)
    end

    desc "pluralize", "Pluralizes a word"
    method_option :word, :aliases => "-w"
    def pluralize
      puts TalltorpFoodie::Foodie.pluralize(options[:word])
    end

    desc "recipe", "Generates a recipe scaffold"
    def recipe(group, name)
      TalltorpFoodie::Generators::Recipe.start([group, name])
    end
  end
end