class HandController

  def add_cards(hand, card1, card2)
    hand << card1 << card2
  end


  def minus_card(hand)
    hand.shift
  end

end