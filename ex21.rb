#!/usr/bin/ruby
#
#
prompt = '> '

def add(a, b)
	puts "Adding #{a} and #{b}"
	return a + b
end

def subtract(a, b)
    puts "Subtracting #{a} and #{b}"
    return a - b
end

def multiply(a, b)
    puts "Multiplying #{a} and #{b}"
    return a * b
end

def divide(a, b)
    puts "Dividing #{a} and #{b}"
    return a / b
end

puts """
Lets's do some maths with just functions
"""

age = add(30, 5)
puts "Age: #{age}"


print "Please enter 2 numbers #{prompt}"
a = gets.chomp.to_i
b = gets.chomp.to_i 

result = add(a, b)
print "#{result} \n"

print "Please enter 2 numbers #{prompt}"

a = gets.chomp.to_i
b = gets.chomp.to_i 

result = subtract(a, b)
puts "The result is #{result}"

