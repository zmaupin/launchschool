#!/usr/bin/env ruby

stoplight = ['green', 'yellow', 'red'].sample

 if stoplight == 'green'
  puts 'Go!'
elsif stoplight == 'yellow'
  puts 'Slow down!'
elsif stoplight == 'red'
  puts 'Stop!'
else
 puts 'That is not a stopglight!'
end
