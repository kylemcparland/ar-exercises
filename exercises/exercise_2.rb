require_relative '../setup'
require_relative './exercise_1'

puts "Exercise 2"
puts "----------"

# Your code goes here ...

# Initialize stores...
stores = Store.all

# Assign stores to instance variables...
@store1 = stores.find_by(id: 1)
@store2 = stores.find_by(id: 2)

# Change store 2's name...
@store2.name = "New Name"

puts "STORE 2's NEW NAME:"
puts "-----------------"
puts @store2.name