#!/usr/bin/ruby
#
#
filename = ARGV.first

puts "We're going to erase #{filename}"
puts "If you don't want that, hit ctrl-c."
puts "If you do want that hit return."

	$stdin.gets

puts "Opening file..."
target = open(filename, 'w')

puts "Truncating file, thanks"
	target.truncate(0)

puts "Now I'll ask 3 questions."

	print "line 1: "
	line1 = $stdin.gets.chomp
	print "line 2: "
	line2 = $stdin.gets.chomp
	print "line 3: "
	line3 = $stdin.gets.chomp

puts "Now I will write the lines to the file"

	target.write(line1)
	target.write("\n")
	target.write(line2)
	target.write("\n")
	target.write(line3)
	target.write("\n")

puts "Now we close the file"

	target.close

