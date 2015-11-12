# Factorial

# I worked on this challenge with: Mohammad Amin.


# Your Solution Below
def factorial(number)
  # Your code goes here
  return 1 if number == 0
  
  product = number
  i = number - 1
  while(i > 0)
    product = product * i
    i -= 1
  end
  return product
    
end