#!/usr/bin/env ruby

daylight = [true, false].sample

def time_of_day(daylight)
  return "It's daytime!" if daylight

  "It's nighttime!"
end

puts time_of_day(daylight)
