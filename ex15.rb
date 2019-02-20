#!/usr/bin/ruby
#
#

filename = "/home/mprak/pickaxe/applefile.txt"
puts "Hello"

txt = open("#{filename}",'a')
	   txt.puts "the ruby guess"
	   txt.close
puts "\nHere's your file \"#{filename}\" "

txt = open("#{filename}",'r')
print txt.read

txt.close
