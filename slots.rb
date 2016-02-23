require_relative 'casino'
require_relative 'game_menu'

class Slots
	attr_accessor :name, :wallet, :player

	def initialize
		puts "Welcome to Slots! Please enter your wager/bet:"
		@bet = gets.strip.to_i
		play
	end	

	def play
		puts "Now type 'p' or 'pull' to begin!"
		@user_input = gets.strip.downcase
		if @user_input == ( 'p' || 'pull' )
			slots_logic(slots_start)
		else
			puts "Please type 'p' or 'pull' to pull my finger and begin:"
			play
		end
	end

	def slots_start
		slots_numbers = [rand(1..3), rand(1..3), rand(1..3)]
		puts "#{slots_numbers[0]} * #{slots_numbers[1]} * #{slots_numbers[2]}"
		slots_logic(slots_numbers)
	end
	
	def slots_logic(slots_numbers)
		case slots_numbers
			when [1, 1, 1]
				puts "Congratulations, you won!"
				# Bet Logic, if I win or lose need to build this
			when [2, 2, 2]
				puts "Congratulations, you won!"
			when [3, 3, 3]
				puts "Congratulations, you won!"	
			else 
				puts "You lost! After losing, your new wallet balance is less $-#{@bet}"
				# To do logic for losing
		end
		puts "Would you like to play again (y/n)?"
		yes_no = gets.strip
		if yes_no == "y"
			initialize
		else 
			exit(0)
		end 
	end
end


Slots.new

