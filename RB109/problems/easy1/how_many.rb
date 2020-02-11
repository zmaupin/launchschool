#!/usr/bin/env ruby
#
# how_many.rb
# problem: write a method that counts the number of occurrences of each element in a given array.
# examples:
#   vehicles = [
#   'car', 'car', 'truck', 'car', 'SUV', 'truck',
#   'motorcycle', 'motorcycle', 'car', 'truck'
# ]
# 
# count_occurrences(vehicles)
# 
# car => 4
# truck => 3
# SUV => 1
# motorcycle => 2

def count_occurrences(vehicles)
  hsh = {}

  vehicles.each do |vehicle|
    if hsh[vehicle]
      hsh[vehicle] += 1
    else
      hsh[vehicle] = 1
    end
  end

  hsh.each { |key, value| puts "#{key} => #{value}" }
end

vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

count_occurrences(vehicles)
# 
# car => 4
# truck => 3
# SUV => 1
# motorcycle => 2
