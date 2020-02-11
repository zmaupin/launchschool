#!/usr/bin/env ruby
# repeat_yourself.rb
#
# problem: write a method that takes two arguments, a string and a positive integer, and prints the string as many times as the integer indicates.
# example:
#   repeat('Hello', 3)
#   => Hello
#   Hello
#   Hello
# data structure: string
# algorithm: def repeat(str, count)
# count.times { puts str }

def repeat(str, count)
  return if count.negative?
  count.times { puts str }
end

repeat('Hello', 3)
