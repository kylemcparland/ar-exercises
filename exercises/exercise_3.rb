require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'

puts "Exercise 3"
puts "----------"

# Your code goes here ...

# Initialize stores...
stores = Store.all

# Assign store 3 to instance variable...
@store3 = stores.find_by(id: 3)

# Delete store 3 from database...
@store3.destroy

puts "STORE 3 HAS BEEN DELETED:"
puts "-----------------"
puts stores.count