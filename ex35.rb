#!/usr/bin/ruby
#



def gold_room
    puts "This is a room full of gold. How much do you take?"
    print "> "
    choice = $stdin.gets.chomp.to_i

    if choice.include? ("0") || ("1")
	how_much = choice.to_i
    else 
	dead("Man, learn to type a number.")
    end

    if how_much < 50
	puts "Nice, you're not greedy, you win!"
	exit(0)
    else 
	dead("You greedy bastard!")
    end

end



def bear_room
    puts "There is a bear here."
    puts "The bear has a bunch of honey."
    puts "The large bear is in front of another door."
    puts "How are you going to move then bear? take honey? open door? taunt bear"
    bear_moved = false


    while true
	print "> "
	choice = $stdin.gets.chomp

	if choice == "take honey"
	    dead("The bear looks at you and slaps your face off.")
	elsif choice == "taunt bear" && !bear_moved
	    puts "The bear moved allowing you to get through the door. \n"
	    bear_moved = true
	    puts "What do you do next?"
	elsif
	    choice == "taunt bear" && bear_moved
	    dead ("The bear gets pissed off and chews your legs off.")
	elsif
	    choice == "open door" && bear_moved
	    gold_roon
	elsif choice.include? "open" && !bear_move
	    dead("The bear catches you and drags you to his den.")
	    
	else 
	    puts "I got no idea what that means."
	end
    end
end



def cthulhu_room
    puts "Here you see the great evil Cthulhu"
    puts "He, it, whatever stares at you and you go insane."
    puts "Do you flee for your life or eat or eat you head?"
    print "> "
    choice = $stdin.gets.chomp


    if choice.include? "flee"
	start
    elsif
	choice.include? "head"
	dead ("Well that was tasty!")
    else
	cthulhu_room
    end
end


def dead(why)
    puts why, "Good Job!"
    exit(0)
end


def start
    puts "You are in a dark room."
    puts "There's a door to your right and a door to the left."
    puts "Which one do you take?"
    print "> "
    choice = $stdin.gets.chomp 

    if
	choice.include? "left"
	bear_room
    elsif
	choice.include? "right"
	cthulhu_room
    else
	dead("You stumble around the room until you starve.")
    end
end

start

