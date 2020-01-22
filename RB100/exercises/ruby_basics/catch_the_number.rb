#!/usr/bin/env ruby

loop do
  number = rand(100)
  puts number

  break if number >= 0 && number <= 10
  # alternatives
  # break if number.between?(0, 10)
end

