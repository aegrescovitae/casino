class Wallet
	attr_accessor :amount

	def initialize
		puts "Please enter an amount for your wallet:"
		@amount = gets.strip.to_i
	end

	def show_wallet
		puts "You have $#{@amount} remaining."
	end
end
