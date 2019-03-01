#!/usr/bin/ruby
#
#
 
# this one is like you scripts with ARGV

def print_two(*args)
    arg1, arg2, = args
    puts "arg1: #{arg1}, arg2: #{arg2}"
    end


def print_two_again(arg1, arg2)
    puts "this is arg1 #{arg1}, this is arg2 #{arg2}..."
end

# ok, that *args is actually pointless, we can job do this.


def print_one(arg1)
    puts = "arg1: #{arg1}"
end


def print_none()
    puts "I got no args."
end


# passing in the args to the functions created. 

print_two("naul", "prak")
print_two_again("mauli","Prakash")
print_one("hello")
print_none()



