#!/usr/bin/env ruby

numbers = {
  high:   100,
  medium: 50,
  low:    10
}

# You don't need to assign the result of the expression to low_numbers since
# you are mutating the caller.
low_numbers = numbers.select! do |key, value|
                 value < 25
               end

p low_numbers
p numbers
