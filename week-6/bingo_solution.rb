# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent [#] hours on this challenge.


# Release 0: Pseudocode
# Outline:

# Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)
 # CREATE array containing letters b,i,n,g,o
  # LOCATE this in initialize as instance variable
 # GENERATE random number 0-5
 # SELECT that cell of array as letter
  # STORE cell # as instance variable
 # GENERATE random number 1-100
  # STORE number as instance variable
 # CREATE string consisting of letter and number
 # RETURN string

# Check the called column for the number called.
  # RETRIEVE instance variable containing column index
  # ITERATE over array, selecting subarrays
    # CHECK indexed column in each subarray
      # IF number == stored instance number
        # CHANGE cell value to X
        # BREAK iteration

# If the number is in the column, replace with an 'x'
  # see above method/code

# Display a column to the console
  # ACCEPT integer argument
  # ITERATE over board array
    # PRINT character in argument column with newline

# Display the board to the console (prettily)
  # ITERATE over board array
    # PRINT each subarray with newline

# Initial Solution

# class BingoBoard

#   def initialize(board)
#     @bingo_array = %w(B I N G O)
#     @bingo_board = board
#   end

#   def call
#     @column = Random.new.rand(5)
#     @number = Random.new.rand(100) + 1
#     puts "#{@bingo_array[@column]}#{@number}"
#   end

#   def display_column(col)
#     @bingo_board.each do |row|
#       p row[col]
#     end
#   end

#   def display_board
#     @bingo_board.each do |row|
#       p row
#     end
#   end

#   def check(col=@column, num=@number)
#     @bingo_board.each do |row|
#       row[col] = 'X' if row[col] == num
#     end
#   end

# end

# Refactored Solution

class BingoBoard

  def initialize(board=create_board)
    @bingo_board = board
  end

  def call
    bingo_array = %w(B I N G O)
    @column = Random.new.rand(5)
    @number = Random.new.rand(100) + 1
    puts "#{bingo_array[@column]}#{@number}"
  end

  def display_column(col)
    @bingo_board.each do |row|
      p row[col]
    end
  end

  def display_board(board=@bingo_board)
    board.each do |row|
      p row
    end
  end

  def check(col=@column, num=@number)
    @bingo_board.each do |row|
      row[col] = 'X' if row[col] == num
    end
  end

  def create_board
    new_board = Array.new(5)
    b = Array(1..15).shuffle.slice(0,5)
    i = Array(16..30).shuffle.slice(0,5)
    n = Array(31..45).shuffle.slice(0,5)
    n[2] = "FREE"
    g = Array(46..60).shuffle.slice(0,5)
    o = Array(61..75).shuffle.slice(0,5)

    (0..4).each do |x|
      new_board[x] = [b[x],i[x],n[x],g[x],o[x]]
    end
    new_board
  end
end

#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE
board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]

new_game = BingoBoard.new(board)
# new_game.display_board
# new_game.call
# new_game.check
# new_game.display_board
new_game.display_board

#Reflection

=begin

How difficult was pseudocoding this challenge? What do you think of your
pseudocoding style?

I didn't find the pseudocoding difficult for this challenge. I think my style
is pretty solid - I've got small steps down, pretty much. My formatting,
possibly, could be better.

What are the benefits of using a class for this challenge?

Using a class is beneficial for this challenge because there are many methods
that depend on persistent values from other methods (ie, instance variables).
It's extremely useful to be able to pass an instance variable containing the
bingo board to the methods that check the board for a value and print the
board out.


How can you access coordinates in a nested array?

You can access coordinates in a nested array by sequentially indicating the
indices you'd like to access - for instance, in our 5x5 array, we can access
the center value directly with array[2][2].

What methods did you use to access and modify the array?

I found a simple .each to be the most useful thing to use for finding values
and printing the board. I used some other methods to create the actual bingo
board - array creation from range, shuffle, and slice.

Give an example of a new method you learned while reviewing the Ruby docs.
Based on what you see in the docs, what purpose does it serve, and how is it
called?

The new methods I learned/used while reviewing the docs, mostly, were used to
create new arrays. I hadn't created an array with the %w() method previously,
nor had I created one using the Array(Range) methods. Both provide ways to
initialize arrays without strictly defining every entry - %w will convert
everything within the parenthesis to strings, and Array(Range) will create a
separate element for each element in the range.

How did you determine what should be an instance variable versus a local
variable?

Basically, I decided if I would need access to a value in a different method
within the class. If so, I made it an instance variable. Otherwise, I used a
local variable.

What do you feel is most improved in your refactored solution?

I didn't change much in the refactoring. I changed a couple of things that didn't need to be instance variables back into local variables.

=end