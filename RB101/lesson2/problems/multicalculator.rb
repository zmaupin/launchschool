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
#
# hints:
# - figure out what format your inputs need to be in. percent as .05 or 5?
# - If working with APR, need to convert to monthly interest rate
# - Be careful about loan duration - months or years?
# - Wrapping up the above, be cautious about your variable names
#
# pseudo-code:
# GETSET username as the name of the user
# LOOP
#   GETSET loan_type as mortgage or car loan?
#   GETSET loan amount in dollars
#   GETSET apr annual percentage rate
#   GETSETCHECK loan duration in months
#   SET monthly_interest_rate to (apr / 12)
#   SET monthly_payment = loan_amount * (monthly_interest_rate / (1 - (1 + monthly_interest_rate) ** (-loan_duration_months)))
#
#   PRINT monthly_payment
#   GET Do you want to calculate again?
#

require 'byebug'

def prompt(message)
  puts ">> #{message}"
end

def valid_float?(number)
  number.to_f.to_s == number && !number.negative?
end

def valid_percent?(percent)
  percent.to_f > 0.01 && percent.to_f <= 100
end

def get_name
  prompt "What is your name? "
  gets.chomp
end

def get_loan_type
  loan_type = ''
  loop do
    prompt('Would you like to run a Mortgage or Car loan calculation? ')
    answer = gets.chomp.downcase

    if answer == 'm' || answer == 'mortgage'
      loan_type = 'mortgage'
      break
    elsif answer == 'c' || answer == 'carloan' || answer == 'car loan' || answer == 'car_loan'
      loan_type = 'car loan'
      break
    else
      next
    end
  end

  loan_type
end

def get_loan_amount
  loan_amount = ''
  loop do
    prompt('Enter the loan amount in dollars: ')
    answer = gets.chomp.delete('$')

    if valid_float? answer
      loan_amount = answer.to_f.round(2)
      break
    else
      prompt('Please enter a loan amount in dollars with or without the dollar sign ($).')
      next
    end
  end

  loan_amount
end

def apr
  apr = ''
  loop do
    prompt('Enter the APR in percent (%3.5, 3.5%, 3.5)')
    answer = gets.chomp.delete('%')

    if valid_percent? answer
      apr = answer.to_f.round(2)
      break
    else
      prompt('Please enter a valid APR with or without the percent sign (%).')
      next
    end
  end

  apr
end

def loan_length
  loan_length = ''
  loop do
    prompt('Enter the loan length in months (60m) or years (5y)')
    loan_length = gets.chomp
    if valid_month? loan_length
      loan_length = if loan_length[-1, 1] = 'y'
                      loan_length.delete('y').to_i / 12
                    else
                      loan_length.delete('n').to_i
                    end
      break
    else
      prompt('Please enter a valid loan length in months (36).')
    end
  end

  loan_length
end

def print_calculation(monthly_payment, _monthly_interest, loan_type)
  if loan_type == 'car loan'
    loan_item = 'car'
  else
    loan_item == 'home'
  end

  prompt("You new #{loan_item} will cost #{monthly_payment} per month!")
end

def rerun?
  prompt('Would you like to run another calculation? (Y/n)')
  answer = gets.chomp.downcase
  answer = 'y' if answer == ''
  return true if answer == 'y'

  false
end

loop do
  prompt 'Mortgage and Car Loan Calculator!'
  name = get_name
  loan_type = get_loan_type

  prompt("Ok, #{name}! Let's run a #{loan_type} calculation.")

  byebug

  loan_amount = get_loan_amount
  apr = get_apr
  loan_length_months = get_loan_length_months

  monthly_interest_rate = apr / 12.0

  monthly_payment = loan_amount * (monthly_interest_rate / (1 - (1 + monthly_interest_rate)**(-loan_length_months)))

  print_calculation(monthly_payment, monthly_interest, loan_type)

  unless rerun?
    puts "Goodbye, #{name}!"
    break
  end
end
