name = 'Jennifer Lin'
age = 33
height = 155
weight = 50
eyes = 'black'
teeth = 'white'
hair = 'Black'

puts "Let's talk about %s." % name
puts "She's %dcm tall." % height
puts "She's %dkg heavy" % weight
puts "Actually that's not too heavy."
puts "She's got %s eyes and %s hair." % [eyes, hair]
puts "Her teeth are usually %s depending on the coffee." % teeth

puts "If I add %d, %d and %d I get %d" % [age, height, weight, (age + height + weight)]