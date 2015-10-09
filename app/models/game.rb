class Game

  attr_reader :player1, :player2

  def initialize
    deck_controller = DeckController.new
    deck_controller.create_deck
    # deck_controller.shuffle
    deck_controller.deal # DB: LOOK AT THIS
    
    player_controller = PlayerController.new

    @player1 = player_controller.create_player(deck_controller.hand1)
    @player2 = player_controller.create_player(deck_controller.hand2)
  end

end