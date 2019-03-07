#!/usr/bin/ruby
#
#
puts "Let's practice everything."
puts "You\'d need to know \'bout escapes with \\that do \n newlines and \t tabs."

poem = <<END
\tThe lovely world 
with logic so firmly planted 
cannot discern \n the needs of love
nor comprehend passion from intuition 
and requires an explanation
\n\t where there is none.
END

puts '-' * 25
puts poem
puts '-' * 25

five = 10 - 2 + 3 - 6

puts "No is: #{five}"

def secret_formula(started)
    jelly_beans = started * 500
    jars = jelly_beans / 1000
    crates = jars / 100
    return jelly_beans, jars, crates
end

start_point = 1000
beans, jars, crates, = secret_formula(start_point)

puts "With a starting point of :#{start_point}"
puts "We\'d have #{beans} beans, #{jars} jars, and #{crates} crates"

start_point = start_point / 10

