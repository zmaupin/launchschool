#!/usr/bin/env ruby

def ascii_value(str)
  sum = 0
  str.each_char { |char| sum += char.ord }
  sum
end

puts ascii_value('Four score')
puts ascii_value('Launch School')
puts ascii_value('a')
puts ascii_value('')

