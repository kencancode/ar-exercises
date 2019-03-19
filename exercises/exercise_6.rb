require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...
class Store < ActiveRecord::Base
    has_many :employees
end
  
class Employee < ActiveRecord::Base
    belongs_to :store
end

@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "John", last_name: "Doe", hourly_rate: 30)
@store1.employees.create(first_name: "Jack", last_name: "Watson", hourly_rate: 30)

@store2.employees.create(first_name: "Jane", last_name: "Donelly", hourly_rate: 10)
@store2.employees.create(first_name: "Jim", last_name: "Huber", hourly_rate: 40)
@store2.employees.create(first_name: "Rose", last_name: "Potter", hourly_rate: 40)