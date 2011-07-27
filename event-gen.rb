#!/usr/bin/env ruby

home = '/home/ktoso/coding/sidewinder-x6-linux-macro-key-events'

ARGF.each do |line|
    puts "____" if line =~ /08000000 00$/

    if line =~ /08010000 00$/
      %x["#{home}/actions/S01.sh"]
    elsif line =~ /08020000 00$/
      %x["#{home}/actions/S02.sh"]
    elsif line =~ /08040000 00$/
      %x["#{home}/actions/S03.sh"]
    elsif line =~ /08080000 00$/
      %x["#{home}/actions/S04.sh"]
    elsif line =~ /08100000 00$/
      %x["#{home}/actions/S05.sh"]
    elsif line =~ /08200000 00$/
      %x["#{home}/actions/S06.sh"]
    elsif line =~ /08400000 00$/
      %x["#{home}/actions/S07.sh"]
    elsif line =~ /08800000 00$/
      %x["#{home}/actions/S08.sh"]
    elsif line =~ /08000100 00$/
      %x["#{home}/actions/S09.sh"]
    elsif line =~ /08000200 00$/
      %x["#{home}/actions/S10.sh"]
    elsif line =~ /08000400 00$/
      %x["#{home}/actions/S11.sh"]
    elsif line =~ /08000800 00$/
      %x["#{home}/actions/S12.sh"]
#    else
#      puts "unrecognized code: " + line
    end


end

