<<<<<<< HEAD

class Wallet 
	attr_accessor :amount

	def initialize(amount)
      
	end

	def show_wallet
		puts "You have $#{amount} remaining."
	end

	# def change_wallet
		# amount = amount + change
	# end
end


=======
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
>>>>>>> ad08b002590119f2de639a6dff6ecfe420f537aa
