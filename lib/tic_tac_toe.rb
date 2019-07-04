class TicTacToe
  
  def initialize(board = nil)
    @board = board || Array.new(9," ")
  end
  
WIN_COMBINATIONS = [
  [0,1,2],
  [3,4,5],
  [6,7,8],
  [0,3,6],
  [0,4,8],
  [1,4,7],
  [2,5,8],
  [2,4,6],
  ]
  
  def display_board
    puts " #{@board[0]} | #{@board[1]} | #{@board[2]} "
    puts "-----------"
    puts " #{@board[3]} | #{@board[4]} | #{@board[5]} "
    puts "-----------"
    puts " #{@board[6]} | #{@board[7]} | #{@board[8]} "
  end
  
  def input_to_index(input)
    return input.to_i - 1
  end
  
  def move(index, token = "X")
    @board[index] = "#{token}"
  end
  
  def position_taken?(index)
    if @board[index] == " "
      false 
    else
      true 
    end
  end
  
  def valid_move?(index)
    index.between?(0,8) && !position_taken?(index)
  end
  
  def turn_count
    @board.count{|token| token == "X" || token == "O"}
  end
  
  def current_player
    turn_count % 2 == 0? "X":"O"
  end
  
  def turn 
    puts "It's your turn! Pick your move by entering 1-9!"
    input = gets.strip
    input = input_to_index
    if valid_move?(index)
      move(index, token)
      display_board
    else
    
    
1. Ask the user for their move by specifying a position between 1-9.
2. Receive the user's input.
3. Translate that input into an index value.
4. If the move is valid, make the move and display the board.
5. If the move is invalid, ask for a new move until a valid move is received.

All these procedures will be wrapped into our `#turn` method. However, the majority of the logic for these procedures will be defined and encapsulated in individual methods that you've already built.

You can imagine the pseudocode for the `#turn` method:

```
ask for input
get input
translate input into index
if index is valid
  make the move for index
  show the board
else
  ask for input again
end
end