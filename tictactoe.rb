module TicEquations
    def checker(ticked, win)
      (win - ticked).empty?
    end
  end



class TicTacToe
  include TicEquations
  @@sq1 = 1; @@sq2 = 2; @@sq3 = 3; @@sq4 = 4;
  @@sq5 = 5; @@sq6 = 6; @@sq7 = 7; @@sq8 = 8;
  @@sq9 = 9
  @@turn = 0
  @@selections = []
  def initialize
    introScreen
  end

  def board
    puts  "Turn: #{@@turn}"
    puts  "| #{@@sq1} | #{@@sq2} | #{@@sq3} |"
    puts  "| #{@@sq4} | #{@@sq5} | #{@@sq6} |"
    puts  "| #{@@sq7} | #{@@sq8} | #{@@sq9} |"
  end

  def selections
    puts "Please select a square"
    case gets.strip
      when "1"
        @@turn += 1
        @@selections.push(1)
        @@sq1 = 'x'
        puts winCondition
        puts board
        puts selections
      when "2"
        @@turn += 1
        @@selections.push(2)
        @@sq2 = 'x'
        puts winCondition
        puts board
        puts selections
      when "3"
        @@turn += 1
        @@selections.push(3)
        @@sq3 = 'x'
        puts winCondition
        puts board
        puts selections
      when "4"
        @@turn += 1
        @@selections.push(4)
        @@sq4 = 'x'
        puts winCondition
        puts board
        puts selections
      when "5"
        @@turn += 1
        @@selections.push(5)
        @@sq5 = 'x'
        puts winCondition
        puts board
        puts selections
      when "6"
        @@turn += 1
        @@selections.push(6)
        @@sq6 = 'x'
        puts winCondition
        puts board
        puts selections
      when "7"
        @@turn += 1
        @@selections.push(7)
        @@sq7 = 'x'
        puts winCondition
        puts board
        puts selections
      when "8"
        @@turn += 1
        @@selections.push(8)
        @@sq8 = 'x'
        puts winCondition
        puts board
        puts selections
      when "9"
        @@turn += 1
        @@selections.push(9)
        @@sq9 = 'x'
        puts winCondition
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

  def winCondition
    if checker(@@selections, [1,2,3]) == true
      puts "\nWINNER!!"
    elsif checker(@@selections, [4,5,6]) == true
      puts "\nWINNER!!"
    elsif checker(@@selections, [7,8,9]) == true
      puts "\nWINNER!!"
    elsif checker(@@selections, [1,4,7]) == true
      puts "\nWINNER!!"
    elsif checker(@@selections, [2,5,8]) == true
      puts "\nWINNER!!"
    elsif checker(@@selections, [3,6,9]) == true
      puts "\nWINNER!!"
    elsif checker(@@selections, [1,5,9]) == true
      puts "\nWINNER!!"
    elsif checker(@@selections, [3,5,7]) == true
      puts "\nWINNER!!"
    else ""
    end
  end
end

TicTacToe.new
