require_relative 'wallet'

class Player
	attr_accessor :wallet, :name
	def initialize
		puts "Please enter your name:"
		print "> "
		@name = gets.strip
		@wallet = Wallet.new
	end
end
