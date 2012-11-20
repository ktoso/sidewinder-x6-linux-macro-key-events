#!/usr/bin/env ruby

@home = '/home/ktoso/coding/sidewinder-x6-linux-macro-key-events'

def call(keyName)
  fork {
    puts "#{keyName} -"
    exec("#{@home}/actions/#{keyName}.sh")
  }
end

ARGF.each do |line|
    puts "____" if line =~ /08000000 00$/

    if line =~ /08010000 00$/
      call 'S01'
    elsif line =~ /08020000 00$/
      call 'S02'
    elsif line =~ /08040000 00$/
      call 'S03'
    elsif line =~ /08080000 00$/
      call 'S04'
    elsif line =~ /08100000 00$/
      call 'S05'
    elsif line =~ /08200000 00$/
      call 'S06'
    elsif line =~ /08400000 00$/
      call 'S07'
    elsif line =~ /08800000 00$/
      call 'S08'
    elsif line =~ /08000100 00$/
      call 'S09'
    elsif line =~ /08000200 00$/
      call 'S10'
    elsif line =~ /08000400 00$/
      call 'S11'
    elsif line =~ /08000800 00$/
      call 'S12'
    # todo support the rest... S13 - S30
#    else
#      puts "unrecognized code: " + line
    end

end

