require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Your code goes here ...

# Initialize stores...
stores = Store.all

# Create new store...
store = Store.new
store.name = "Surry"
store.annual_revenue = 224000
store.mens_apparel = false
store.womens_apparel = true
store.save

# Create new store...
store = Store.new
store.name = "Whistler"
store.annual_revenue = 1900000
store.mens_apparel = true
store.womens_apparel = false
store.save

# Create new store...
store = Store.new
store.name = "Yaletown"
store.annual_revenue = 430000
store.mens_apparel = true
store.womens_apparel = false
store.save

@mens_stores_subset = stores.where(mens_apparel: true)

puts "STORES THAT HAVE MENS APPAREL:"
puts "-----------------"

@mens_stores_subset.each do |store|
  puts "#{store.name}, #{store.annual_revenue}"
end

puts "STORES THAT HAVE WOMENS APPAREL + ANNUAL REVENUE UNDER 1M:"
puts "-----------------"

@womens_stores_subset = stores.where(womens_apparel: true).where("annual_revenue < ?", 1_000_000)

@womens_stores_subset.each do |store|
  puts "#{store.name}, #{store.annual_revenue}"
end