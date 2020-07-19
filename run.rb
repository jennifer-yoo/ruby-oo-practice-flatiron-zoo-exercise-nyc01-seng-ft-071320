require_relative "lib/Animal.rb"
require_relative "lib/Zoo.rb"
require 'pry'


z1 = Zoo.new("Bronx Zoo", "NY")
z2 = Zoo.new("San Diego Zoo", "CA")
z3 = Zoo.new("Chicago Zoo", "IL")

a1 = Animal.new(z1, "Cat", 10, "Bob")
a2 = Animal.new(z2, "Cat", 15, "Tab")
a3 = Animal.new(z2, "Dog", 57, "Buddy")
a4 = Animal.new(z1, "Cat", 4, "Billy")
a5 = Animal.new(z3, "Dog", 10, "Riley")



binding.pry
puts "done"
