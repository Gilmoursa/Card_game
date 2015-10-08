#require 'pry'
class Deck
	attr_reader :deck, :hand_a, :hand_b

	def initialize
		suits = ['♤','♡','♢','♧']
		@deck = suits.map do |suit|
			(1..13).to_a.map do |i|
				"#{i}#{suit}"
			end
		end.flatten.shuffle
	end

	def deal
		two_hands = @deck.each_slice(26).to_a
		@hand_a = two_hands[0]
		@hand_b = two_hands[1]
	end
end

# test_hand = Deck.new
# test_hand.deal
# puts test_hand.hand_a