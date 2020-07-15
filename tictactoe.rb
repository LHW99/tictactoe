class TicTacToe
  def initialize
    introScreen
  end

  def board
    puts  `| #{sq1} |`
  end

  def selections
    @selections = []
    puts "Please select a square"
    case gets.strip
      when "1"
        @selections.push(1)
        puts board
        puts selections
      when "2"
        puts 'test2'
    end
  end

  def introScreen
    puts  "Welcome to tic-tac-toe! Each player will take 
turns placing an X or an O. The winner is the 
player with three X's or O's in a row. \n\n"

    puts board 

    puts selections
  end

  def sq1
    @sq1 = 1
    @selections.include(1) ? @sq1 = x : @sq1 = 1
  end
end

TicTacToe.new
