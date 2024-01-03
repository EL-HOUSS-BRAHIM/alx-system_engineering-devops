#!/usr/bin/env ruby

def MatchCase(int)
  regex = /[0-9]/
  return int.to_s.scan(regex).join
end
if ARGV.length == 1
  puts MatchCase(ARGV[0].to_i)
else
  puts "Usage: #{$PROGRAM_NAME} <integer>"
end
