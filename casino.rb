require 'pry'
require_relative 'player'
require_relative 'hi_lo'
require_relative 'hi_low_cards'

class Casino
	attr_accessor :player

	def initialize
		puts "Welcome to the casino!"
		@player = Player.new
		game_menu
	end

	def game_menu
		puts "-- GAMES --"
		puts "1: HiLo"
		puts "2: HiLo With Cards"
		puts "3: Wallet"
		puts "4: Exit"
		random_event
	end

	def game_choice
		input = gets.strip.to_i
		case input
		when 1
			HiLo.new(player)
		when 2
			HiLoCards.new(player)
		when 3
			puts "Wallet: $#{player.wallet.amount}"
		when 4
			exit
		else
			puts "Please Enter 1, 2 or 3!"
		end
		game_menu
	end

	def random_event
		rand_num = rand(1..10)
		if rand_num == 5
			puts "You fall down the stairs, break your neck, and die :-("
		elsif rand_num == 6
			puts "You find $100 in your pocket!"
			player.wallet.amount = player.wallet.amount + 100
			game_choice
		else
			game_choice
		end
	end
end

casino = Casino.new
