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

class BingoBoard

  def initialize(board)
    @bingo_array = %w(B I N G O)
    @bingo_board = board
  end

  def call
    @column = Random.new.rand(5)
    @number = Random.new.rand(100) + 1
    puts "#{@bingo_array[@column]}#{@number}"
  end

  def display_column(col)
    @bingo_board.each do |row|
      p row[col]
    end
  end

  def display_board
    @bingo_board.each do |row|
      p row
    end
  end

  def check(col=@column, num=@number)
    @bingo_board.each do |row|
      row[col] = 'X' if row[col] == num
    end
  end

end

# Refactored Solution

#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE
board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]

new_game = BingoBoard.new(board)
new_game.display_board
new_game.call
new_game.check
new_game.display_board


#Reflection

