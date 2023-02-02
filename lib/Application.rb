class Application

  def start_game
    system('clear')
    puts "\n\n\n\t\t\t---------------------------------------"
    puts "\t\t\t|            LE MORPION               |"
    puts "\t\t\t|         -- TIC TAC TOE --           |"
    puts "\t\t\t---------------------------------------"
    puts " "
    puts " "
    puts "      Bienvenue sur le jeu du morpion ! Tu connais les règles ?"
    puts "      Affronte un autre joueur (ou ton deuxième toi-même)"
    puts "      et sois le premier à aligner tes trois symboles"
    puts "      Compris ? Alors commençons ! "
    puts " "
  end


  def ask_player1
    puts "      Tout d'abord, quel est le nom du premier joueur ? "
    print "      JOUEUR 1 : "
    player1 = gets.chomp
    puts "      Ton symbole sera le X"
    puts " "
    return player1
  end


  def ask_player2
    puts "      Ensuite, quel est le nom du deuxième joueur ? "
    print "      JOUEUR 2 : "
    player2 = gets.chomp
    puts "      Ton symbole sera le O"
    puts " "
    puts " "
    puts "      La partie peut commencer..."
    puts "      Appuie sur entrée pour lancer le jeu"
    gets.chomp
    return player2
  end

  def ask_again(game)
    puts "      Veux-tu rejouer ? OUI / NON"
    print "      > "
    input = gets.chomp
    puts " "
    while input != "OUI" || input != "NON"
      case input
      when "OUI"
        input = " "
        game.new_round
        game.turn
      when "NON"
        game.game_end
        break
      else
        puts "      Veux-tu rejouer ? OUI / NON"
        puts "      Ecris OUI ou NON en majuscules : "
        print "      > "
        input = gets.chomp
        puts " "
      end
    end

  end


  def perform
    start_game
    player1 = ask_player1
    player2 = ask_player2

    game = Game.new(player1, player2)
    game.turn

    ask_again(game)

  end
  
end
