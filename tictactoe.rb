class TicTacToe
  def initialize
    introScreen
  end

  def board
    puts  "| #{1} | #{2} | #{3} |
| #{4} | #{5} | #{6} |
| #{7} | #{8} | #{9} |"
  end

  def introScreen
    puts  "Welcome to tic-tac-toe! Each player will take 
turns placing an X or an O. The winner is the 
player with three X's or O's in a row.
    "
    puts board
  end
=begin
  case gets.strip
    when "1"
    when "2"
    when "3"
    when "4"
    when "5"
    when "6"
    when "7"
    when "8"
    when "9"
  end
=end
end

TicTacToe.new

=begin
introduction of rules
has 9 slots to place
each player takes turns placing
if a player hits 3 in a row, they win
if all spots are filled without a winner, it is a draw

step 1: turn a square into an x
=end