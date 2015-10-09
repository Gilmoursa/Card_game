class Deck

  def initialize 
    suits = ['♤','♡','♢','♧']
    @deck = suits.map do |suit|
      (1..13).to_a.map do |i|
        Card.new(i, suit)
      end
    end.flatten
  end


end