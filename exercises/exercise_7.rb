require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

# Your code goes here ...
class Employee < ActiveRecord::Base
    validates :first_name,  presence: true
    validates :last_name,   presence: true
    validates :hourly_rate, inclusion: 40..200
    validates :store_id,    presence: true
end

class Store < ActiveRecord::Base
    validates :name, length: { minimum: 3 }
    validates :annual_revenue, numericality: {greater_than_or_equal_to: 0}
end

##Create a store based on user's answer
puts "Enter a store name"
@user_answer = gets.chomp
@user_store = Store.new(name: @user_answer)
@user_store.save