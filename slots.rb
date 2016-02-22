require_relative 'casino'

def slots_start
	

	@slots_numbers = [rand(1..3), rand(1..3), rand(1..3)]
	puts @slots_numbers



end


class Slots
	attr_accessor :name, :wallet, :player

	def initialize
		puts "Welcome to Slots! Please enter your wager/bet:"
		@bet = gets.strip.to_i
		puts "Now type 'p' or 'pull' to begin!"
		@user_input = gets.strip.downcase
			if @user_input == 'p' || 'pull'
				slots_start
			else
				puts "Please type 'p' or 'pull' to pull my finger and begin:"
				initialize
			end
		puts "Here are you numbers #{@slots_numbers}"
	end
end



def slots_logic
	case @slots_numbers
		when 1, 1, 1
			puts "Congratulations, you won!"

		when 2, 2, 2
			puts "Congratulations, you won!"


		when 3, 3, 3
			puts "Congratulations, you won!"


	end
end

initialize