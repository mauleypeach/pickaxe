user_name, test = ARGV 
prompt = '> '

puts "Hi #{user_name}."
puts "I'd like to ask you a few questions."
print "Do you like me #{user_name}? ", prompt
	likes = $stdin.gets.chomp

print "Where do you live #{user_name}", prompt
	lives = $stdin.gets.chomp

print "What kind of computer do you have #{user_name}", prompt
	computer = $stdin.gets.chomp

puts """\nAlright, so you said you #{likes} about liking me.
You live in #{lives}. Not sure where that is. 
And you have a #{computer} computer. Nice!
	"""
puts "#{test}"
