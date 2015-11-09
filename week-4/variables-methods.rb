puts "Hello, there. What's your first name?"
first_name = gets.chomp
puts "And your middle name?"
middle_name = gets.chomp
puts "And, finally, your last name?"
last_name = gets. chomp
puts "Hello, " + first_name + " " + middle_name + " " + last_name + ". Thank you for your patience."

puts "Say, " + first_name +", what's your favorite number?"
fav_num = gets.chomp.to_i;
fav_num += 1
puts "Have you considered " + fav_num.to_s + " instead? It is one more, after all."