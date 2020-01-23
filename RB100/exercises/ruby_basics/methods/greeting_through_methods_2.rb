#!/usr/bin/env ruby

def hello
  'Hello'
end

def world
  'World'
end

def greet
  "#{hello} #{world}"
end

def greet2
  hello + ' ' + world
end

puts greet
puts greet2
