require 'pry'
class Gamelogic_cli
	# attr_reader :play_deck
	attr_reader :user_input
	attr_reader :player1, :player2

	def initialize
		puts "Welcome to War!"
		puts "Type help to learn about the game or play to start playing"
		@play_deck = Deck.new
		@play_deck.deal
		self.assign_players
		cli
	end

	def assign_players
		@player1 = Player.new(@play_deck.hand_a)
		@player2 = Player.new(@play_deck.hand_b)
	end

	def help
		puts "Each player turns up a card at the same time and the player with the higher card takes both cards and puts them, face down, on the bottom of his stack. If the cards are the same rank, it is War. Each player turns up one card face down and one card face up. The player with the higher cards takes both piles (six cards)."
	end

	def input
		@user_input=gets.downcase.chomp
	end

	def cli 
		while @user_input != 'exit'
			input
			case @user_input
			when 'help'
				help
			when 'play'
				play
			when 'exit'
				break
			else
				puts "I didn't understand your command, type help to get help or play to start playing."
			end
		end
		puts "Goodbye, thanks for playing!"
	end

	def play
		#binding.pry
		puts "Player 1 played"
		puts "#{@player1.play_hand}"
		puts "Player 2 played"
		puts "#{@player2.play_hand}"
		puts "#{self.is_greater?} wins"
	end

	def exit
		puts "Thank you for playing."
	end

	def is_greater?
		if @player1.card_escrow[0...-1].to_i > @player2.card_escrow[0...-1].to_i
		 	"player 1"
		# elsif player1.card_escrow < player2.card_escrow
		# 	player2
		else
			"player 2" 
		end
	end
end