class TicTacToe
  @@sq1 = 1; @@sq2 = 2; @@sq3 = 3; @@sq4 = 4;
  @@sq5 = 5; @@sq6 = 6; @@sq7 = 7; @@sq8 = 8;
  @@sq9 = 9
  def initialize
    introScreen
  end

  def board
    puts  "| #{@@sq1} | #{@@sq2} | #{@@sq3} |"
    puts  "| #{@@sq4} | #{@@sq5} | #{@@sq6} |"
    puts  "| #{@@sq7} | #{@@sq8} | #{@@sq9} |"
  end

  def selections
    @selections = []
    puts "Please select a square"
    case gets.strip
      when "1"
        @selections.push(1)
        @@sq1 = 'x'
        puts board
        puts selections
      when "2"
        @selections.push(2)
        @@sq2 = 'x'
        puts board
        puts selections
      when "3"
        @selections.push(3)
        @@sq3 = 'x'
        puts board
        puts selections
      when "4"
        @selections.push(4)
        @@sq4 = 'x'
        puts board
        puts selections
      when "5"
        @selections.push(5)
        @@sq5 = 'x'
        puts board
        puts selections
      when "6"
        @selections.push(6)
        @@sq6 = 'x'
        puts board
        puts selections
      when "7"
        @selections.push(7)
        @@sq7 = 'x'
        puts board
        puts selections
      when "8"
        @selections.push(8)
        @@sq8 = 'x'
        puts board
        puts selections
      when "9"
        @selections.push(9)
        @@sq9 = 'x'
        puts board
        puts selections
    end
  end

  def introScreen
    puts  "Welcome to tic-tac-toe! Each player will take 
turns placing an X or an O. The winner is the 
player with three X's or O's in a row. \n\n"

    puts board 

    puts selections
  end
end

TicTacToe.new
