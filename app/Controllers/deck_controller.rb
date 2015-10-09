class DeckController

  attr_reader :deck, :hand1, :hand2

  def create_deck
    @deck = Deck.new
  end


  def shuffle

  end


  def deal
    two_hands = @deck.each_slice(26).to_a
    @hand1 = Hand.new
    @hand2 = Hand.new

    @hand1.hand = two_hands[0]
    @hand2.hand = two_hands[1]
  end

end