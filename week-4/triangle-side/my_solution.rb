# I worked on this challenge with Dana Breen.


# Your Solution Below

def valid_triangle?(a, b, c)
  # Your code goes here!
  if a == 0 || b == 0 || c == 0
    return false
  end

  if a > b && a > c
    if b + c > a
      return true
    else
      return false
    end
  elsif b > a && b > c
    if a + c > b
      return true
    else
      return false
    end
  else
    if b + a > c
      return true
    else
      return false
    end
  end



end
