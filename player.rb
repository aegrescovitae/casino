require_relative 'wallet'

class Player
	attr_accessor :wallet, :name

	def initialize
		puts "What is your name?"
		@name = gets.strip
		puts "What is your wallet amount?"
		amount = gets.to_i
		@wallet = Wallet.new(amount)
	end

end