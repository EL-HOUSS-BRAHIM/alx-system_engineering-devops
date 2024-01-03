#!/usr/bin/env ruby

def MatchCase(str)
  regex = /h.tn/
  return str.scan(regex).join
end

if ARGV.length == 1
  puts MatchCase(ARGV[0])
else
  puts "Usage: #{$PROGRAM_NAME} <string>"
end