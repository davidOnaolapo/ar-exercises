require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

puts "Enter the Store name"
store_name = gets.chomp



@mystore = Store.create(name: "#{store_name}");
puts @mystore.errors.full_messages
