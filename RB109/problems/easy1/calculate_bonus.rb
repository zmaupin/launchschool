#!/usr/bin/env ruby
#
# calculate_bonus.rb
#
# problem: write a method that takes two arguments,
#   a positive integer and a boolean, and calculates the bonus for a given
#   salary. If the boolean is `true`, the bonus should be half of the salary.
#   If `false` the bonus should be 0.
# examples:
# puts calculate_bonus(2800, true) == 1400
# puts calculate_bonus(1000, false) == 0
# puts calculate_bonus(50000, true) == 25000
# data structure: int
# algo:
#   - if bool is false, return 0
#   - if bool is true, do work
#     - return half the salary arg
def calculate_bonus(salary, eligible_for_bonus)
  return 0 unless eligible_for_bonus

  return salary / 2
end

puts calculate_bonus(2800, true) == 1400
puts calculate_bonus(1000, false) == 0
puts calculate_bonus(50000, true) == 25000
