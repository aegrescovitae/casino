require 'pry'
require_relative 'player'
require_relative 'hi_lo'
require_relative 'hi_low_cards'
require_relative 'hi_low_die'

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
		puts "3: HiLo With Dice"
		puts "4: Wallet"
		puts "5: Exit"
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
			HiLoDie.new(player)
		when 4
			puts "Wallet: $#{player.wallet.amount}"
		when 5
			exit
		else
			puts "Please Enter a valid choice!"
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
