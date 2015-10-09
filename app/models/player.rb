class Player
	attr_reader :hand, :card
	attr_accessor :card_escrow

	def initialize(hand)
		@hand = hand
	end

	def play_hand
		self.card_escrow = self.hand.shift
	end
end