#this is blackjack
require 'pry'

require_relative 'deck'

class Blackjack 
	attr_accessor :name, :bet
	

	def initialize
		@name = 'Jake'
		@bet = 0
	end

	def play_game
		puts "Welcome to blackjack!  Enter a bet, or type 0 to quit"
		@bet = gets.strip.to_f
		if @bet <= 0; exit
		else
			puts "Let's play!"
			deck = Deck.new
			puts deck.draw_card
			# hit_me(cards)
		end

	end


	# def hit_me(deal)
	# 	puts "Draw Card"
	# 	sleep 1
	# 	card = deal.deck.cards.sample
	# 	puts "The card is #{card}"
		
	# 	puts card_value(card)
	# end

end

game = Blackjack.new

game.play_game

		


