module TicEquations
    def checker(ticked)
      win = [[1,2,3],[4,5,6],[7,8,9],[1,4,7],
      [2,5,8],[3,6,9],[1,5,9],[3,5,7]]
      check = win.map { |arr| (arr-ticked).empty? }
      check.include?(true)
    end
  end

class TicTacToe
  include TicEquations
  def reset
    @@sq1 = 1; @@sq2 = 2; @@sq3 = 3; @@sq4 = 4;
    @@sq5 = 5; @@sq6 = 6; @@sq7 = 7; @@sq8 = 8;
    @@sq9 = 9
    @@turn = 0
    @@selectionsX = []; @@selectionsO = []
  end

  def initialize
    reset
    introScreen
  end

  def board
    puts  "Turn: #{@@turn}"
    puts  "| #{@@sq1} | #{@@sq2} | #{@@sq3} |"
    puts  "| #{@@sq4} | #{@@sq5} | #{@@sq6} |"
    puts  "| #{@@sq7} | #{@@sq8} | #{@@sq9} |"
  end

  def selections
    puts "Please select a square."
    case gets.strip
      when "1"
        @@turn += 1
        @@turn % 2 == 0 ? (@@sq1 = 'x'; @@selectionsX.push(1))
        : (@@sq1 = 'o'; @@selectionsO.push(1))
        if winCondition == true  
          return winCondition 
        else
          (board; selections)
        end
      when "2"
        @@turn += 1
        @@turn % 2 == 0 ? (@@sq2 = 'x'; @@selectionsX.push(2))
        : (@@sq2 = 'o'; @@selectionsO.push(2))
        if winCondition == true  
          return winCondition 
        else
          (board; selections)
        end
      when "3"
        @@turn += 1
        @@turn % 2 == 0 ? (@@sq3 = 'x'; @@selectionsX.push(3))
        : (@@sq3 = 'o'; @@selectionsO.push(3))
        if winCondition == true  
          return winCondition 
        else
          (board; selections)
        end
      when "4"
        @@turn += 1
        @@turn % 2 == 0 ? (@@sq4 = 'x'; @@selectionsX.push(4))
        : (@@sq4 = 'o'; @@selectionsO.push(4))
        if winCondition == true  
          return winCondition 
        else
          (board; selections)
        end
      when "5"
        @@turn += 1
        @@turn % 2 == 0 ? (@@sq5 = 'x'; @@selectionsX.push(5))
        : (@@sq5 = 'o'; @@selectionsO.push(5))
        if winCondition == true  
          return winCondition 
        else
          (board; selections)
        end
      when "6"
        @@turn += 1
        @@turn % 2 == 0 ? (@@sq6 = 'x'; @@selectionsX.push(6))
        : (@@sq6 = 'o'; @@selectionsO.push(6))
        if winCondition == true  
          return winCondition
        else
          (board; selections)
        end
      when "7"
        @@turn += 1
        @@turn % 2 == 0 ? (@@sq7 = 'x'; @@selectionsX.push(7))
        : (@@sq7 = 'o'; @@selectionsO.push(7))
        if winCondition == true  
          return winCondition 
        else
          (board; selections)
        end
      when "8"
        @@turn += 1
        @@turn % 2 == 0 ? (@@sq8 = 'x'; @@selectionsX.push(8))
        : (@@sq8 = 'o'; @@selectionsO.push(8))
        if winCondition == true  
          return winCondition 
        else
          (board; selections)
        end
      when "9"
        @@turn += 1
        @@turn % 2 == 0 ? (@@sq9 = 'x'; @@selectionsX.push(9))
        : (@@sq9 = 'o'; @@selectionsO.push(9))
        if winCondition == true  
          return winCondition
        else
          (board; selections)
        end
    end
  end

  def introScreen
    puts  "Welcome to tic-tac-toe! Each player will take 
turns placing an X or an O. The winner is the 
player with three X's or O's in a row. \n\n"

    puts board 

    puts selections
  end

  def playAgain
    puts "Play again? (Y/N)"
    user_input = gets.strip
    if user_input.downcase == "y"
      reset
      TicTacToe.new
    elsif user_input.downcase == "n"
      exit!
    else
      puts "Please input Y or N"
    end
  end

  def winCondition
    if checker(@@selectionsX) == true
      puts "\nX IS THE WINNER!!"
      puts board
      return playAgain
    elsif checker(@@selectionsO) == true
      puts "\nO IS THE WINNER!!"
      puts board
      return playAgain
    end
  end
end

TicTacToe.new