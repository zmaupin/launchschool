#!/usr/bin/env ruby

# Create a simple tip calculator.
# Prompt for bill amount and tip rate.
# Compute the tip and then display both the tip and the total amount of the bill.
#
def calculate_tip(bill_amount, tip_rate)
  bill_amount * (tip_rate / 100)
end

puts 'Enter the bill amount: '
bill_amount = gets.chomp.to_f

puts 'Enter the tip rate in %: '
tip_rate = gets.chomp.delete('%').to_f

tip = calculate_tip(bill_amount, tip_rate)

total = bill_amount + tip

puts "The tip is $#{tip}."
puts "The total is $#{total}."
