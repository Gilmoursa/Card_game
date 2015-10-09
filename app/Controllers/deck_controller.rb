class DeckController

  attr_reader :hand1, :hand2

  def create_deck
    @deck_object = Deck.new
    @deck_object.deck 
  end


  # def shuffle
  #   @deck.shuffle
  # end


  def deal
    two_hands = @deck_object.deck.each_slice(26).to_a
    # two_hands = Card.all.each_slice(26)
    @hand1 = Hand.new
    @hand2 = Hand.new

    @hand1.hand = two_hands[0]
    @hand2.hand = two_hands[1]
  end

end