#!/usr/bin/env ruby

# Given an integer (the number of minutes before or after midnight, return the string "HH:MM" representing the time.
#
# 1. function takes a number (integer)
# 2. function has to determine if we are adding or subtracting from midnight mark
#   - if adding, start at 0
#   - if subtracting, start 2400
#   - to get the minutes use `var % 60`
#   
#
#   I got stuck on this one.
# def after_midnight(num)
#   time = ''
#   if num.negative?
#     midnight_minus_num = 2400 - num
#     minutes = midnight_minus_num % 60
#     hours = midnight_minus_num % 100
#   else
# 
#   end
# end

MINUTES_PER_HOUR = 60
HOURS_PER_DAY = 24
MINUTES_PER_DAY = HOURS_PER_DAY * MINUTES_PER_HOUR

def time_of_day(delta_minutes)
  delta_minutes = delta_minutes % MINUTES_PER_DAY
  hours, minutes = delta_minutes.divmod(MINUTES_PER_HOUR)
  format('%02d:%02d', hours, minutes)
end

puts time_of_day(0) == "00:00"
puts time_of_day(-3) == "23:57"
puts time_of_day(35) == "00:35"
puts time_of_day(-1437) == "00:03"
puts time_of_day(3000) == "02:00"
puts time_of_day(800) == "13:20"
puts time_of_day(-4231) == "01:29"
