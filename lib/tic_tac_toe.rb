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
    turn = 0 
    @board.each do |taken|
    
    def turn
    puts "What is your move?"
    input = gets.chomp
    input_to_index(input)
    if valid_move?(index)
      move
    else
      "That spot is taken! Try again."
      if valid_move?(index)
        move
      end
    end
  end
end 