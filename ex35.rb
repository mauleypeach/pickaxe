#!/usr/bin/ruby
#


def goldroom()
    puts ("This room is full of gold. How much do you take?")

    gold = gets #puts ("> ").gets
	puts "You received £#{gold}" if gold < 100
end 

goldroom
