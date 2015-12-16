# Cipher Challenge

# I worked on this challenge [by myself, with:]
# I spent [#] hours on this challenge.

# 1. Solution
# Write your comments on what each thing is doing.
# If you have difficulty, go into IRB and play with the methods.


# def dr_evils_cipher(coded_message)

#   # turn coded message into lowercase, then split it into an array where the
#   # cells are every character
#   input = coded_message.downcase.split("")
#   # create empty array to hold decoded sentence
#   decoded_sentence = []
#   # create hardcoded hash as cipher key
#   # possible to replace it with a range-to-array setup, and then a defined
#   # shift. decode with % function
#   # cipher = {"e" => "a",  
#   #           "f" => "b",  
#   #           "g" => "c",
#   #           "h" => "d",
#   #           "i" => "e",
#   #           "j" => "f",
#   #           "k" => "g",
#   #           "l" => "h",
#   #           "m" => "i",
#   #           "n" => "j",
#   #           "o" => "k",
#   #           "p" => "l",
#   #           "q" => "m",
#   #           "r" => "n",
#   #           "s" => "o",
#   #           "t" => "p",
#   #           "u" => "q",
#   #           "v" => "r",
#   #           "w" => "s",
#   #           "x" => "t",
#   #           "y" => "u",
#   #           "z" => "v",
#   #           "a" => "w",
#   #           "b" => "x",
#   #           "c" => "y",
#   #           "d" => "z"}
#   # loop over each character in the array containing the split message
#   input.each do |x|
#     # initialize boolean to check if next loop manages to decode character. If
#     # this remains false, code after the loop pushes the 'x' value to the
#     # decoded solution.
#     found_match = false
#     # loop over the keys in the cipher hash
#     cipher.each_key do |y|
#       # comparing coded letter from input array to current letter key from
#       # cipher
#       if x == y
#         # if code matches key, push the value from the cipher into the final
#         # message
#         decoded_sentence << cipher[y]
#         # if match found, flip the boolean
#         found_match = true
#         # break if match found - rest of loop is unnecessary
#         break
#       # turns strange characters into spaces
#       elsif x == "@" || x == "#" || x == "$" || x == "%"|| x == "^" || x == "&"|| x =="*"
#         # push space into decoded array if symbol
#         decoded_sentence << " "
#         # flip boolean
#         found_match = true
#         # break loop - rest unnecessary
#         break
#       # if number, push number to decoded array
#       elsif (0..9).to_a.include?(x)
#         # push number to decoded array 
#         decoded_sentence << x
#         # flip boolean
#         found_match = true
#         # break loop
#         break
#       end
#     end
#     # if found_match still false, value not found in decoder loop
#     if not found_match
#       # push character from input to decoded array
#       decoded_sentence << x
#     end
#   end
#   # join decoded array into string, return it
#   decoded_sentence = decoded_sentence.join("")
# end

# Your Refactored Solution

def get_code_hash(shift)
  base_array = ('a'..'z').to_a
  return base_array.each_with_index.reduce({}) { |code, (current, index)|
    code[current] = base_array[index-shift]
    code
  }
end

def dr_evils_cipher(coded_message)

  input = coded_message.downcase.split("")
  shift = 4
  cipher = get_code_hash(shift)

  decoded_sentence = input.reduce([]) do |last, code_letter|
    case code_letter
    when 'a'..'z' then
      last << cipher[code_letter]
    when /[@#$%^&*\n]/ then
      last << " "
    else
      last << code_letter
    end
  end.join("")
end

# Driver Test Code:
p dr_evils_cipher("m^aerx%e&gsoi!") == "i want a coke!" #This is driver test code and should print true
# Find out what Dr. Evil is saying below and turn it into driver test code as well. Driver test code statements should always return "true."
p dr_evils_cipher("syv%ievpc#exxiqtxw&ex^e$xvegxsv#fieq#airx%xlvsykl$wizivep#tvitevexmsrw.#tvitevexmsrw#e*xlvsykl#k&aivi%e@gsqtpixi&jempyvi.
&fyx%rsa,$pehmiw@erh#kirxpiqir,%ai%jmreppc@lezi&e&asvomrk%xvegxsv#fieq,^almgl^ai^wlepp%gepp@tvitevexmsr^l") == "our early attempts at a tractor beam went through several preparations. preparations a through g were a complete failure.  but now, ladies and gentlemen, we finally have a working tractor beam, which we shall call preparation h"
p dr_evils_cipher("csy&wii,@m'zi@xyvrih$xli*qssr$mrxs&alex@m#pmoi%xs#gepp%e^hiexl#wxev.") == "you see, i've turned the moon into what i like to call a death star."
p dr_evils_cipher("qmrm#qi,*mj^m#iziv^pswx#csy#m^hsr'x%orsa^alex@m%asyph^hs.
@m'h%tvsfefpc%qszi$sr%erh*kix#ersxliv$gpsri@fyx*xlivi@asyph^fi@e^15&qmryxi@tivmsh%xlivi$alivi*m*asyph&nywx^fi$mrgsrwspefpi.") == "mini me, if i ever lost you i don't know what i would do.  i'd probably move on and get another clone but there would be a 15 minute period there where i would just be inconsolable."
p dr_evils_cipher("alc@qeoi*e$xvmppmsr^alir#ai*gsyph%qeoi...#fmppmsrw?") == "why make a trillion when we could make... billions?"

# Reflection
# Keep your reflection limited to 10-15 minutes!

# What concepts did you review in this challenge?

# I got to play with constructing arrays from ranges, hashes from arrays, and
# with case statements. Also some fun string operations.

# What is still confusing to you about Ruby?

# I think I have a fairly solid grasp of it at this point - at least, the
# surface stuff.

# What are you going to study to get more prepared for Phase 1?

# I'm going to play with creating and using enumerators (not just enumerable
# methods) some more - it came in very handy when creating the cipher key in
# this challenge, and it's not something I'd worked with before.
