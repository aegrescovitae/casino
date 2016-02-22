require 'pry'
require_relative 'player'

class Casino
	attr_accessor :players

	def initialize
		@players = []
		puts "******** $$$ Welcome to the Ruby Casino! $$$ ********"
		puts "How many players do you want?"
		num_players = gets.to_i
		num_players.times do
			@players << Player.new
		end
		puts "----Here are all the players!----"
		show_players
	end

	def show_players
		players.each do |player|
			puts "Player #{index} is... " player.name
			puts player.wallet.show_wallet
		end
	end

	def just_for_show
		puts @players[0].wallet.amount += -100
	end


end

casino = Casino.new
casino.just_for_show

casino.players[0].wallet.show_wallet
