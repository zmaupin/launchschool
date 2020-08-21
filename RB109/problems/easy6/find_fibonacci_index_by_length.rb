#!/usr/bin/env ruby

# This requires a significant amount of resources the further from the start you get.
# def find_fibonacci_index_by_length(len)
#   fib = [1, 1]
#   i = 0
#   j = i + 1
#   while true
#     fib << fib[i] + fib[j]
#     i += 1
#     j += 1
#     break if fib.last.digits.length >= len
#   end
#   fib.length
# end

# Write a method that does not store each value in the array.
def find_fibonacci_index_by_length(len)
  first = 1
  second = 1
  index = 2
  loop do
    fibonacci = first + second
    first = second
    second = fibonacci
    index += 1
    break if fibonacci.digits.length >= len
  end
  index
end

puts find_fibonacci_index_by_length(2) == 7          # 1 1 2 3 5 8 13
puts find_fibonacci_index_by_length(3) == 12         # 1 1 2 3 5 8 13 21 34 55 89 144
puts find_fibonacci_index_by_length(10) == 45
puts find_fibonacci_index_by_length(100) == 476
puts find_fibonacci_index_by_length(1000) == 4782
puts find_fibonacci_index_by_length(10000) == 47847
