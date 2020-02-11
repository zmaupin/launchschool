#!/usr/bin/env ruby
#
# prime.rb
#
# Write a method that takes two numbers. It should print ouf all primes between the two numbers. Don't use Ruby's `prime` Class.
#
# Example
#   find_prime(3, 10)
#   # => 3, 5, 7
#
# What should this method return? It will print out numbers, but what should it return?
# What is a prime number?
#
# Problem:
#   We need to find all prime numbers between two given numbers.
# Examples:
#   see above
# Data structure: Array
# Algorithm:
#   1. initialize an empty array, prime_nums
#   2. iterate over the range start_num to stop_num
#     3. append to the array prime_nums if the current number in the iteration is a prime number
#   4. Print all the numbers. Format: 1, 2, 3
#   5. Return nil
# Code!

def find_primes(start_num, stop_num)
  prime_nums = []
  is_prime = true

  (start_num..stop_num).each do |num|
    if (num == 0 || num == 1) ||
       (num > 5 && num[-1] == 5) ||
       (num > 2 && num.even?)
      is_prime = false
    end

    (2..num - 1).each do |test_num|
      is_prime = if (num % test_num).zero?
                   false
                 else
                   true
                 end

      break if is_prime == false
    end

    prime_nums << num if is_prime
  end

  puts prime_nums.join(', ')

  nil
end

find_primes(3, 10)
find_primes(3, 100)
