class Game

  attr_reader :deck, :

  def initialize
    deck_controller = DeckController.new
    @deck = deck_controller.create_deck
    deck_controller.deal
    @player1 = PlayerController.create_player(deck_controller.hand1)
    @player2 = PlayerController.create_player(deck_controller.hand2)
  end

end