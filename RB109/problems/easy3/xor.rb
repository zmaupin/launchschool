#!/usr/bin/env ruby

# In this exercise, you will write a method named xor that takes two arguments, and returns true if exactly one of its arguments is truthy, false otherwise.

def xor?(expr1, expr2)
  return true if expr1 && !expr2
  return true if expr2 && !expr1
  false
end

def idiomatic_xor?(expr1, expr2)
  (expr1 && !expr2) || (expr2 && !expr1)
end

p xor?(5.even?, 4.even?) == true
p xor?(5.odd?, 4.odd?) == true
p xor?(5.odd?, 4.even?) == false
p xor?(5.even?, 4.odd?) == false
