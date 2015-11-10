# Concatenate Two Arrays

# I worked on this challenge by myself.


# Your Solution Below

def array_concat(array_1, array_2)
  new_array = []
  array_1.each do |item|
  	new_array.push(item)
  end
  array_2.each do |item|
  	new_array.push(item)
  end
  new_array
end