#!/usr/bin/ruby
#
 
the_count = [1,2,3,4,5]
fruits = ['apples', 'oranges', 'pears', 'apricots']
change = [1, 'pennies', 2, 'dimes', 3, 'quarters']

# this first kind of for-loop goes through a list
# in a more traditional style found in other languages>

for num in the_count
  puts "This is the count #{num}"
end

# same as above but in more ruby style
# this and the next one the preferred 
# way ruby for-loops are written. 

fruits.each do |fruit|
    puts "A fruit of type: #{fruit}"
end

# also we can go through mixed lists too
# note this is yet another style , exactly like above 
# but a different syntax (way to write it).

change.each {|i| puts "I got #{i}"}

# we can also build lists, first start with an empty one. 
elements = []
# then user the range operator to do 0 to 5 counts
(0..5).each do |num|
    puts "adding #{num} to the list"
# pushes the num variable on the *end* of the list
    elements.push(num)
end

# now we can print them out too

elements.each { |i| 
    puts  "Element was: #{i}"}

elements2 = []
the_count.each do |i|
    puts "Adding #{i} to elements2"
    elements2 << i
end

elements.each { |thing|
    puts "Element is - #{thing}."}
