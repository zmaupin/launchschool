#!/usr/bin/env ruby

puts 'Enter the length of the room in meters:'
length_of_room = gets.chomp.to_i

puts 'Enter the width of the room in meters:'
width_of_room = gets.chomp.to_i

area = length_of_room.to_f * width_of_room.to_f
puts "The area of the room is #{area} square meters (#{area * 10.7639} square feet)."
