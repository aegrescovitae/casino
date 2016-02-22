require 'player'

@player = 'jake'
class wallet 
	def initialize
		@wallet_amount
	end

	def new_wallet
		puts "How much money do you want to put in your wallet?"
		@wallet_amount = gets.strip.to_f
		puts "$#{@wallet_amount} added to wallet for player #{@player}"
	end

	def show_wallet
		puts "#{@player} has $#{@wallet_amount} remaining."
	end


end

puts