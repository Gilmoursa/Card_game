class Player
	attr_reader :hand, :card

	def initialize(hand)
		@hand = hand
	end

	def play_hand
		card_escrow = self.hand.shift
	end
end