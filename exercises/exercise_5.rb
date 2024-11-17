require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...

# Initialize stores...
stores = Store.all

puts "ANNUAL REVENUE OF ALL STORES:"
puts "-----------------"
@total_revenue = stores.sum(:annual_revenue)
puts @total_revenue

puts "AVERAGE REVENUE OF ALL STORES:"
puts "-----------------"
@average_revenue = stores.average(:annual_revenue)
puts @average_revenue

puts ""
puts "-----------------"
@stores_above_1m = stores.where("annual_revenue > ?", 1_000_000).count
puts @stores_above_1m