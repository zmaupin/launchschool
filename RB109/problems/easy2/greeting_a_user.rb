#!/usr/bin/env ruby

def greeting(name)
  if name[-1] == '!'
    puts "HELLO #{name[0, name.length - 1].upcase}. WHY ARE WE SCREAMING?"
  else
    puts "Hello #{name}."
  end
end

print 'What is your name? '
user_name = gets.chomp

greeting(user_name)
