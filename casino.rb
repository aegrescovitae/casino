require 'pry'
require_relative 'player'

class Casino
	attr_accessor :players

	def initialize
		@players = []
		puts "Welcome to the casino!"
		puts "How many players do you want?"
		num_players = gets.to_i
		num_players.times do
			@players << Player.new
		end
		show_players
	end

	def show_players
		players.each do |player|
			puts player.name
			puts player.wallet.show_wallet
		end
	end

end

casino = Casino.new
