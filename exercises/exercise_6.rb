require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...

# CREATE new employees in STORE 1...
@store1.employees.create(first_name: "Kyle", last_name: "McParland", hourly_rate: 60)
@store1.employees.create(first_name: "Test 2", last_name: "Guy 2", hourly_rate: 60)

# CREATE new employees in STORE 2...
@store2.employees.create(first_name: "Test 3", last_name: "Guy 3", hourly_rate: 60)
@store2.employees.create(first_name: "Test 4", last_name: "Guy 4", hourly_rate: 60)
@store2.employees.create(first_name: "Test 5", last_name: "Guy 5", hourly_rate: 60)

puts @store2.employees.count