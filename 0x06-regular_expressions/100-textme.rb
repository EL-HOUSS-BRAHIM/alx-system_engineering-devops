#!/usr/bin/env ruby

def MatchCase(log)
  sender = log.match(/\[from:(.+?)\]/)&.captures&.first || "no match was found"
  receiver = log.match(/\[to:(.+?)\]/)&.captures&.first || "no match was found"
  flags = log.match(/\[flags:(.+?)\]/)&.captures&.first || "no match was found"
  puts "#{sender},#{receiver},#{flags}"
end
if ARGV.length == 1
  log = ARGV[0]
  MatchCase(log)
else
  puts "Usage: #{$PROGRAM_NAME} <log>"
end
