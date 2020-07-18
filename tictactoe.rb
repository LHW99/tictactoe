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
    @@turn = 1
    @@selectionsX = []; @@selectionsO = []
  end

  def initialize
    reset
    introScreen
  end

  def whichPlayer
    @@turn % 2 == 0 ? "X" : "O"
  end

  def board
    puts  "\nTurn: #{@@turn}"

    puts  "| #{@@sq1} | #{@@sq2} | #{@@sq3} |"
    puts  "| #{@@sq4} | #{@@sq5} | #{@@sq6} |"
    puts  "| #{@@sq7} | #{@@sq8} | #{@@sq9} |"
  end

  def selections
    puts "Currently Placing: #{whichPlayer}"
    puts "Please select a square (1-9)."
    case gets.strip
      when "1"
        if @@selectionsX.include?(1) || @@selectionsO.include?(1)
          puts "Please select an empty square"
          (board; selections)
        else
          @@turn += 1
          @@turn % 2 != 0 ? (@@sq1 = 'x'; @@selectionsX.push(1))
          : (@@sq1 = 'o'; @@selectionsO.push(1))
            if winCondition == true  
              return winCondition 
            else
              (board; selections)
            end
          end
      when "2"
        if @@selectionsX.include?(2) || @@selectionsO.include?(2)
          puts "Please select an empty square"
          (board; selections)
        else
          @@turn += 1
          @@turn % 2 != 0 ? (@@sq2 = 'x'; @@selectionsX.push(2))
          : (@@sq2 = 'o'; @@selectionsO.push(2))
            if winCondition == true  
              return winCondition 
            else
              (board; selections)
            end
          end
      when "3"
        if @@selectionsX.include?(3) || @@selectionsO.include?(3)
          puts "Please select an empty square"
          (board; selections)
        else
          @@turn += 1
          @@turn % 2 != 0 ? (@@sq3 = 'x'; @@selectionsX.push(3))
          : (@@sq3 = 'o'; @@selectionsO.push(3))
            if winCondition == true  
              return winCondition 
            else
              (board; selections)
            end
          end
      when "4"
        if @@selectionsX.include?(4) || @@selectionsO.include?(4)
          puts "Please select an empty square"
          (board; selections)
        else
          @@turn += 1
          @@turn % 2 != 0 ? (@@sq4 = 'x'; @@selectionsX.push(4))
          : (@@sq4 = 'o'; @@selectionsO.push(4))
            if winCondition == true  
              return winCondition 
            else
              (board; selections)
            end
          end
      when "5"
        if @@selectionsX.include?(5) || @@selectionsO.include?(5)
          puts "Please select an empty square"
          (board; selections)
        else
          @@turn += 1
          @@turn % 2 != 0 ? (@@sq5 = 'x'; @@selectionsX.push(5))
          : (@@sq5 = 'o'; @@selectionsO.push(5))
            if winCondition == true  
              return winCondition 
            else
              (board; selections)
            end
          end
      when "6"
        if @@selectionsX.include?(6) || @@selectionsO.include?(6)
          puts "Please select an empty square"
          (board; selections)
        else
          @@turn += 1
          @@turn % 2 != 0 ? (@@sq6 = 'x'; @@selectionsX.push(6))
          : (@@sq6 = 'o'; @@selectionsO.push(6))
            if winCondition == true  
              return winCondition 
            else
              (board; selections)
            end
          end
      when "7"
        if @@selectionsX.include?(7) || @@selectionsO.include?(7)
          puts "Please select an empty square"
          (board; selections)
        else
          @@turn += 1
          @@turn % 2 != 0 ? (@@sq7 = 'x'; @@selectionsX.push(7))
          : (@@sq7 = 'o'; @@selectionsO.push(7))
            if winCondition == true  
              return winCondition 
            else
              (board; selections)
            end
          end
      when "8"
        if @@selectionsX.include?(8) || @@selectionsO.include?(8)
          puts "Please select an empty square"
          (board; selections)
        else
          @@turn += 1
          @@turn % 2 != 0 ? (@@sq8 = 'x'; @@selectionsX.push(8))
          : (@@sq8 = 'o'; @@selectionsO.push(8))
            if winCondition == true  
              return winCondition 
            else
              (board; selections)
            end
          end
      when "9"
        if @@selectionsX.include?(9) || @@selectionsO.include?(9)
          puts "Please select an empty square"
          (board; selections)
        else
          @@turn += 1
          @@turn % 2 != 0 ? (@@sq9 = 'x'; @@selectionsX.push(9))
          : (@@sq9 = 'o'; @@selectionsO.push(9))
            if winCondition == true  
              return winCondition 
            else
              (board; selections)
            end
          end
      else
        puts "Please input a number between 1-9"

        (board; selections)
    end
  end

  def introScreen
    puts  "Welcome to tic-tac-toe! Each player will take 
turns placing an X or an O. The winner is the 
player with three X's or O's in a row."

    puts board 

    puts selections
  end

  def playAgain
    puts "Play again? (Y/N)"
    loop do
      case (gets.chomp.downcase)
      when 'y'
        reset
        TicTacToe.new
      when 'n'
        exit!
      else 
        puts "Please input Y or N"
      end
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