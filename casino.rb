require 'pry'
require_relative 'player'
require_relative 'hi_lo'

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
		puts "2: Wallet"
		puts "3: Exit"
		random_event
	end

	def game_choice
		input = gets.strip.to_i
		case input
		when 1
			HiLo.new(player)
		when 2
			puts "Wallet: $#{player.wallet.amount}"
		when 3
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
		else
			game_choice
		end
	end


end

casino = Casino.new
