#!/usr/bin/env ruby
# frozen_string_literal: true

# Given an array, mutate the array by reversing it.
#
# [1,2,3,4,5] should be [5,4,3,2,1]
def reverse!(arr)
  new_arr = []
  arr.length.times do
    new_arr << arr.pop
  end

  arr = new_arr
end

list = [1, 2, 3, 4]
reverse!(list)
p list
