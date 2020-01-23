#!/usr/bin/env ruby

# We need three pieces of information:
# 1. the loan amount
# 2. the annual percentage rate (APR)
# 3. the loan duration
#
# Then calculate two things:
# 1. monthly interest rate
# 2. loan duration in months
#
# Formulas:
# m = p * (j / (1 - (1 + j) ** (-n)))
# m = monthly payment
# p = loan amount
# j = monthly interest rate
# n = loan duration in months

def prompt(message)
  puts ">> #{message}"
end

def valid_number?(number)
  number.to_f.to_s == number && !number.negative?
end

def valid_percent?(number)
  number.to_f > 0.01 && number.to_f <= 100
end
