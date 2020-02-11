#!/usr/bin/env ruby

print 'How old are you now? '
age = gets.chomp.to_i

print 'At what age would you like to retire? '
retirement_age = gets.chomp.to_i

years_until_retirement = retirement_age - age
current_year = 2020

puts "It's #{current_year}. You will retire in #{current_year + years_until_retirement}."
puts "You have only #{years_until_retirement} years of work to go!"
