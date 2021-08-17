require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "Johnson", last_name: "Smith", hourly_rate: 65)
@store1.employees.create(first_name: "Dababy", last_name: "Alex", hourly_rate: 55)

@store2.employees.create(first_name: "Lopez", last_name: "John", hourly_rate: 60)
@store2.employees.create(first_name: "Gaga", last_name: "Ladie", hourly_rate: 65)
@store2.employees.create(first_name: "Tolz", last_name: "Matic", hourly_rate: 100)

puts @store1.employees