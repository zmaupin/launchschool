#!/usr/bin/env ruby
#
# balancer.rb
#
# Write a method named `balancer` that returns a boolean
#   true when there are matching opening and closing parenheses
#   false when there are mismatched opening and closing parenheses
#
# Examples
#   balancer("hi")      => true
#   balancer("(hi")     => false
#   balancer("(hi)")    => true
#
# bonus:
#   balancer(")hi(")  => false

# Problem: we need a method that can determine if parenheses are ordered correctly and having a matching end. The method should return a boolean.
# Input: string
# Output: Boolean
# Examples: see above
# Data Structure: boolean
# Algorithm:
#   1. initialize parens to 0
#   2. add 1 to parens if we encounter an opening paren
#   3. subtract 1 from parens if we encounter a closing paren
#   4. return false if parens if ever negative
#   5. return false if parens is not 0
# Code time!

def balancer(str)
  paren_count = 0

  str.split('').each do |char|
    paren_count += 1 if char == '('
    paren_count -= 1 if char == ')'

    return false if paren_count.negative?
  end

  return false if paren_count.positive?

  true
end

p balancer("hi")    #  => true
p balancer("(hi")   #  => false
p balancer("(hi)")  #  => true
p balancer(")hi(")  #  => false
