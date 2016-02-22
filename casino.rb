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
		puts "2: Exit"
		game_choice
	end

	def game_choice
		input = gets.strip.to_i
		case input
		when 1
			HiLo.new(player)
		when 2
			exit
		else
			puts "Please Enter 1 or 2"
			game_choice
		end
	end
end

casino = Casino.new
