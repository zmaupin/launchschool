#!/usr/bin/env ruby

numbers = {
  high:   100,
  medium: 50,
  low:    10
}

half_numbers = numbers.values.map { |value| value / 2 }

# Alternate
# half_numbers = numbers.map { |key, value| value / 2 }

p half_numbers
