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

