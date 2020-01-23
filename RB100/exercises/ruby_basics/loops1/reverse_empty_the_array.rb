#!/usr/bin/env ruby

names = ['Sally', 'Joe', 'Lisa', 'Henry']
names.reverse!

loop do
  puts names.pop
  break if names.empty?
end
