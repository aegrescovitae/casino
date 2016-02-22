
class Wallet 
	attr_accessor :amount

	def initialize(amount)
		@amount = amount
      
	end

	def show_wallet
		puts "You have $#{@amount} remaining."
	
	
	end

	
end

