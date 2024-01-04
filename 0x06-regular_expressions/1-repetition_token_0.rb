#!/usr/bin/env ruby

def matchCase(str)
  regex = /hbt{2,5}n/
  return str.scan(regex).join
end
if ARGV.length == 1
  puts matchCase(ARGV[0])
else
  puts "Usage: #{$PROGRAM_NAME} <string>"
end
  
