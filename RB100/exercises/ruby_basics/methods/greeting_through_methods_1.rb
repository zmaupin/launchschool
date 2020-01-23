#!/usr/bin/env ruby

def hello
  "Hello"
end

def world
  "World"
end

# String concatenation
puts hello + ' ' + world

# Alternative way, string interpolation
puts "#{hello} #{world}"
