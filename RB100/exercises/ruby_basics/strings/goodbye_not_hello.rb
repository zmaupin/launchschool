#!/usr/bin/env ruby

greeting = 'Hello!'
# greeting.gsub!(/Hello!/, 'Goodbye!')
# You don't have to use regexp.
greeting.gsub!('Hello', 'Goodbye')

puts greeting
