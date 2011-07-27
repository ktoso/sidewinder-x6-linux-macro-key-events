#!/usr/bin/env ruby

ARGF.each do |line|
    puts "Got: " + line #if line =~ /login/

    puts "____" if line =~ /08000000 00$/

    puts "S01 -" if line =~ /08010000 00$/
    puts "S02 -" if line =~ /08020000 00$/
    puts "S03 -" if line =~ /08040000 00$/
    puts "S04 -" if line =~ /08080000 00$/
    puts "S05 -" if line =~ /08100000 00$/
    puts "S06 -" if line =~ /08200000 00$/

    puts "S07 -" if line =~ /08400000 00$/
    puts "S08 -" if line =~ /08800000 00$/
    puts "S09 -" if line =~ /08000100 00$/
    puts "S10 -" if line =~ /08000200 00$/
    puts "S11 -" if line =~ /08000400 00$/
    puts "S12 -" if line =~ /08000800 00$/
end

