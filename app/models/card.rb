class Card

  attr_reader :number, :suit

  @@all = []

  def initialize(number, suit)
    @number = number
    @suit = suit
    @@all << self
  end

  def self.all 
    @@all
  end

end