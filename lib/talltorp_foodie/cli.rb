require 'thor'
require "talltorp_foodie/foodie"

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
  end
end