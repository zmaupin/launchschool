#!/usr/bin/env ruby

# Write a method that will take a short line of text, and print it within a box.
# 
# Example:
# 
# print_in_box('To boldly go where no one has gone before.')
# +--------------------------------------------+
# |                                            |
# | To boldly go where no one has gone before. |
# |                                            |
# +--------------------------------------------+

# First, print an empty box.
# Second, inject the string on the middle line of the box.

CORNER = '+'
SIDE = '|'
ROW = '-'

# Possibly use String#center
def print_in_box(str)
  box_width = str.length
  print_row_edge(box_width)
  print_empty_row(box_width)
  print_message(str)
  print_empty_row(box_width)
  print_row_edge(box_width)
end

def print_row_edge(len)
  print CORNER
  box_row = ['-', '-']
  len.times { box_row << '-' }
  print box_row.join
  print CORNER
  puts
end

def print_empty_row(len)
  print SIDE
  box_row = [' ', ' ']
  len.times { box_row << ' ' }
  print box_row.join
  print SIDE
  puts
end

def print_message(str)
  print SIDE
  box_row = [' ', ' ']
  print " #{str} "
  print SIDE
  puts
end

print_in_box('')
print_in_box('abc')
print_in_box('To boldly go where no one has gone before.')

