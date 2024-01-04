#!/usr/bin/env ruby

def MatchCase(str)
  regex = /^\d{10}$/
  return str.scan(regex).join
end
if ARGV.length == 1
  puts MatchCase(ARGV[0])
else
  puts "Usage: #{$PROGRAM_NAME} <string>"
end
