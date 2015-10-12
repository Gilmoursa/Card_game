require'pry'
class GameController

  def initialize
    puts "Welcome to War! If this works it'll be a miracle!"
    game = Game.new
    @player1=game.player1.hand.hand
    @player2=game.player1.hand.hand
    # binding.pry
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
    hand_controller1= HandController.new
    hand_controller2= HandController.new

    @player1_hand=hand_controller1.minus_card(@player1)
    @player2_hand=hand_controller2.minus_card(@player2)

    puts "Player 1 played #{@player1_hand.number} #{@player1_hand.suit}"
    puts "Player 2 played #{@player2_hand.number} #{@player2_hand.suit}"

    puts "#{self.player_with_higher_card} wins"
    
    self.player_with_higher_card.hand_controller1.add_cards( @player1_hand, @player2_hand)

  end

  def exit
    puts "Thank you for playing."
  end

  def player_with_higher_card
    if @player1_hand.number > @player2_hand.number

      hand_controller1.add_cards( @player1_hand, @player2_hand)
      player1
      "player1"

    elsif @player1_hand.number < @player2_hand.number
      hand_controller1.add_cards( @player1_hand, @player2_hand)
      player2 
      "player2"
    else 
      "Play again ..."
      
    end
  end

  def help
    puts "Each player turns up a card at the same time and the player with the higher card takes both cards and puts them, face down, on the bottom of his stack. If the cards are the same rank, it is War. Each player turns up one card face down and one card face up. The player with the higher cards takes both piles (six cards)."
  end

end