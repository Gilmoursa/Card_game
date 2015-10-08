class Gamelogic_cli
	attr_accessor :input
	# attr_reader :play_deck

	def initialize
		puts "Welcome to War!"
		@play_deck = Deck.new
		@play_deck.deal
		self.assign_players
		cli
	end

	def assign_players
		player1 = Player.new(@play_deck.hand_a)
		player2 = Player.new(@play_deck.hand_b)
	end

	def help
		puts "Each player turns up a card at the same time and the player with the higher card takes both cards and puts them, face down, on the bottom of his stack. If the cards are the same rank, it is War. Each player turns up one card face down and one card face up. The player with the higher cards takes both piles (six cards)."
	end

	def cli 
		while input != 'exit'
			case input
			when 'help'
				help
			when 'play'
				play
			else
				puts "I didn't understand your command"
			end
		end
		puts "Goodbye, thanks for playing!"
	end

	def play
		puts "Player 1 played #{player1.card_escrow}"
		puts "Player 2 played #{player2.card_escrow}"
		puts "#{self.is_greater?} wins"
	end

	def exit
		puts "Thank you for playing."
	end

	def is_greater?
		if player1.card_escrow[0...-1].to_i > player2.card_escrow[0...-1].to_i
		 	player1
		# elsif player1.card_escrow < player2.card_escrow
		# 	player2
		else
			player2 
		end
	end
end

#require 'pry'


Gamelogic_cli.new