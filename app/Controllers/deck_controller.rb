class DeckController

  attr_reader :deck, :hand_a, :hand_b

  def new
    @deck = Deck.new
  end


  def shuffle

  end


  def deal
    two_hands = @deck.each_slice(26).to_a
    #@hand_a = Hand.new
    #@hand_b = Hand.new

    @hand_a = two_hands[0]
    @hand_b = two_hands[1]
  end

end