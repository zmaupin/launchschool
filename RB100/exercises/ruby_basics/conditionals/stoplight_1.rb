#!/usr/bin/env ruby

stoplight = ['green', 'yellow', 'red'].sample

puts case stoplight
when 'green'
  'Go!'
when 'yellow'
  'Slow Down!'
when 'red'
  'Stop!'
else
  'That is not a stoplight!'
end

