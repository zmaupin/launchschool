#!/usr/bin/env ruby

loop do
  process_the_loop = [true, false].sample

  if process_the_loop
    puts "The loop was processed!"
    break
  else
    puts "The loop wasn't processed!"
  end
end

# process_the_loop should be outside the loop
#
# process_the_loop = [true, false].sample
# if process_the_loop
#   loop do
#     puts 'The loop was processed!'
#     break
#   end
# else
#   puts 'The loop wasn\'t processed!'
# end
