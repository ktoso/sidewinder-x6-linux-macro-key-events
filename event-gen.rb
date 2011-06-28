#!/usr/bin/env ruby

ARGF.each do |line|
#    puts "Got: " + line #if line =~ /login/

    puts "S1 -" if line =~ /08000000 00$/
    puts "S1 _" if line =~ /08010000 00$/
end

