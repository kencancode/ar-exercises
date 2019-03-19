require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...
@total_revenue = Store.sum(:annual_revenue)
puts "Total revenues from all stores: #{@total_revenue}"

@average_annual_revenue = @total_revenue / Store.count
puts "Average revenues: #{@average_annual_revenue}"

puts "Number of stores generating more than 1M: "
puts Store.where("annual_revenue >= 1000000").size
