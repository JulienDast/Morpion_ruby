class Board
  attr_accessor :array_case
  
  def initialize
    @array_case = []


    @array_case << BoardCase.new("A1")
    @array_case << BoardCase.new("A2")
    @array_case << BoardCase.new("A3")
    @array_case << BoardCase.new("B1")
    @array_case << BoardCase.new("B2")
    @array_case << BoardCase.new("B3")
    @array_case << BoardCase.new("C1")
    @array_case << BoardCase.new("C2")
    @array_case << BoardCase.new("C3")

  end


  def board_display
    puts " "
    puts "            | 1 | 2 | 3 "
    print "         "
    puts "-" * 15
    puts "          A | #{array_case[0].value} | #{array_case[1].value} | #{array_case[2].value} "
    print "         "
    puts "-" * 15
    puts "          B | #{array_case[3].value} | #{array_case[4].value} | #{array_case[5].value} "
    print "         "
    puts "-" * 15
    puts "          C | #{array_case[6].value} | #{array_case[7].value} | #{array_case[8].value} "
    puts " "
  end


  def board_clean
    n = " "
    array_case[0].value = n
    array_case[1].value = n
    array_case[2].value = n
    array_case[3].value = n
    array_case[4].value = n
    array_case[5].value = n
    array_case[6].value = n
    array_case[7].value = n
    array_case[8].value = n
  end


  def play_turn(player)

    if player == "01"
      a = "X"
    else 
      a = "O"
    end

    puts "      Quelle case choisis-tu ?"
    print "      > "
    input = gets.chomp
    loop do
      case input

      when "A1"
     
        if array_case[0].value != " "
          puts " "
          puts "      Tricheur !"
          puts "      Tu as essayé de voler une case à ton adversaire, mais tu ne peux pas !"
          puts "      Choisis une autre case : "
          print "      > "
          input = gets.chomp
        else
          array_case[0].value = a
          break
        end

      when "A2"
        if array_case[1].value != " "
          puts " "
          puts "      Tricheur !"
          puts "      Tu as essayé de voler une case à ton adversaire, mais tu ne peux pas !"
          puts "      Choisis une autre case : "
          print "      > "
          input = gets.chomp
        else
          array_case[1].value = a
          break
        end

      when "A3"
        if array_case[2].value != " "
          puts " "
          puts "      Tricheur !"
          puts "      Tu as essayé de voler une case à ton adversaire, mais tu ne peux pas !"
          puts "      Choisis une autre case : "
          print "      > "
          input = gets.chomp
        else
          array_case[2].value = a
          break
        end

      when "B1"
        if array_case[3].value != " "
          puts " "
          puts "      Tricheur !"
          puts "      Tu as essayé de voler une case à ton adversaire, mais tu ne peux pas !"
          puts "      Choisis une autre case : "
          print "      > "
          input = gets.chomp
        else
          array_case[3].value = a
          break
        end

      when "B2"
        if array_case[4].value != " "
          puts " "
          puts "      Tricheur !"
          puts "      Tu as essayé de voler une case à ton adversaire, mais tu ne peux pas !"
          puts "      Choisis une autre case : "
          print "      > "
          input = gets.chomp
        else
          array_case[4].value = a
          break
        end

      when "B3"
        if array_case[5].value != " "
          puts " "
          puts "      Tricheur !"
          puts "      Tu as essayé de voler une case à ton adversaire, mais tu ne peux pas !"
          puts "      Choisis une autre case : "
          print "      > "
          input = gets.chomp
        else
          array_case[5].value = a
          break
        end

      when "C1"
        if array_case[6].value != " "
          puts " "
          puts "      Tricheur !"
          puts "      Tu as essayé de voler une case à ton adversaire, mais tu ne peux pas !"
          puts "      Choisis une autre case : "
          print "      > "
          input = gets.chomp
        else
          array_case[6].value = a
          break
        end

      when "C2"
        if array_case[7].value != " "
          puts " "
          puts "      Tricheur !"
          puts "      Tu as essayé de voler une case à ton adversaire, mais tu ne peux pas !"
          puts "      Choisis une autre case : "
          print "      > "
          input = gets.chomp
        else
          array_case[7].value = a
          break
        end

      when "C3"
        if array_case[8].value != " "
          puts " "
          puts "      Tricheur !"
          puts "      Tu as essayé de voler une case à ton adversaire, mais tu ne peux pas !"
          puts "      Choisis une autre case : "
          print "      > "
          input = gets.chomp
        else
          array_case[8].value = a
          break
        end

      else
        
        puts " "
        puts "      Tu n'as pas entré une case valide"
        puts "      Essaie encore en mettant bien les majuscules : "
        print "      > "
        input = gets.chomp
      end
    end
  end

  def victory

    
    if array_case[0].value == array_case[1].value && array_case[1].value == array_case[2].value && array_case[2].value == "X"
      return "X"
    elsif array_case[3].value == array_case[4].value && array_case[4].value == array_case[5].value && array_case[5].value == "X"
      return "X"
    elsif array_case[6].value == array_case[7].value && array_case[7].value == array_case[8].value && array_case[8].value == "X"
      return "X"
    elsif array_case[0].value == array_case[3].value && array_case[3].value == array_case[6].value && array_case[6].value == "X"
      return "X"
    elsif array_case[1].value == array_case[4].value && array_case[4].value == array_case[7].value && array_case[7].value == "X"
      return "X"
    elsif array_case[2].value == array_case[5].value && array_case[5].value == array_case[8].value && array_case[8].value == "X"
      return "X"
    elsif array_case[0].value == array_case[4].value && array_case[4].value == array_case[8].value && array_case[8].value == "X"
      return "X"
    elsif array_case[2].value == array_case[4].value && array_case[4].value == array_case[6].value && array_case[6].value == "X"
      return "X"

   
    elsif array_case[0].value == array_case[1].value && array_case[1].value == array_case[2].value && array_case[2].value == "O"
      return "O"
    elsif array_case[3].value == array_case[4].value && array_case[4].value == array_case[5].value && array_case[5].value == "O"
      return "O"
    elsif array_case[6].value == array_case[7].value && array_case[7].value == array_case[8].value && array_case[8].value == "O"
      return "O"
    elsif array_case[0].value == array_case[3].value && array_case[3].value == array_case[6].value && array_case[6].value == "O"
      return "O"
    elsif array_case[1].value == array_case[4].value && array_case[4].value == array_case[7].value && array_case[7].value == "O"
      return "O"
    elsif array_case[2].value == array_case[5].value && array_case[5].value == array_case[8].value && array_case[8].value == "O"
      return "O"
    elsif array_case[0].value == array_case[4].value && array_case[4].value == array_case[8].value && array_case[8].value == "O"
      return "O"
    elsif array_case[2].value == array_case[4].value && array_case[4].value == array_case[6].value && array_case[6].value == "O"
      return "O"

  
    elsif array_case[0].value != " " && array_case[1].value != " " && array_case[2].value != " " && array_case[3].value != " " && array_case[4].value != " " && array_case[5].value != " " && array_case[6].value != " " &&array_case[7].value != " " && array_case[8].value != " "
      return "égalité"

    else 
      return false
    end
    
  end

end
