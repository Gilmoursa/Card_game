class GameController

  def initialize
    puts "Welcome to War! If this works it'll be a miracle!"
    Game.new
    cli
  end

  def cli 
    while @user_input != 'exit'
      input
      case @user_input
      when 'help'
        help
      when 'play'
        play
      when 'exit'
        break
      else
        puts "I didn't understand your command, type help to get help or play to start playing."
      end
    end
    puts "Goodbye, thanks for playing!"
  end

  def input
    @user_input=gets.downcase.chomp
  end

    def play
    #binding.pry
    puts "Player 1 played" #{@player1.play_hand}"
    puts "Player 2 played" #{@player2.play_hand}"
    puts "#{self.player_with_higher_card} wins"
  end

  def exit
    puts "Thank you for playing."
  end

  def player_with_higher_card
    if @player1.card_escrow[0...-1].to_i > @player2.card_escrow[0...-1].to_i
      "player 1"
    # elsif player1.card_escrow < player2.card_escrow
    #   player2
    else
      "player 2" 
    end
  end

  def help
    puts "Each player turns up a card at the same time and the player with the higher card takes both cards and puts them, face down, on the bottom of his stack. If the cards are the same rank, it is War. Each player turns up one card face down and one card face up. The player with the higher cards takes both piles (six cards)."
  end

end