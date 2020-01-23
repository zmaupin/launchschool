#!/usr/bin/env ruby

colors = 'blue pink yellow orange'
colors_array = colors.split

check = ['yellow', 'purple']
check.each do |color|
  if colors_array.include?(color)
    puts 'true'
  else
    puts 'false'
  end
end

# Simpler way to do it
# puts colors.include?('yellow')
# puts colors.include?('purple)
