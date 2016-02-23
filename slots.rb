require_relative 'player'

class Slots
	
	def initialize(player)
		@player = player
		start
	end

	def winner
		@player.wallet.amount = @player.wallet.amount + @bet_slots
		puts "Your wallet now holds $#{@player.wallet.amount}"
	end

	def loser
		@player.wallet.amount = @player.wallet.amount - @bet_slots
		puts "Your wallet now holds $#{@player.wallet.amount}"
	end

	def start
		puts "Welcome to Slots #{@player.name}!"
		puts "Your wallet currently has $#{@player.wallet.amount}"
		puts "Please enter your bet/wager:"
		@bet_slots = gets.strip.to_i
		if @player.wallet.amount < @bet_slots
			puts "****************************************"
			puts "You cannnot bet more money than you have. If you try to rip this Casino off"
			puts "the mafia will break your legs and pillage your village with the"
			puts "wrath of a thousand empires, and you will know pain."
			puts "Please make another wager...."
			puts "****************************************"
			start
		else
			play
		end
	end

	def play
		puts "Now type 'p' to pull the leaver and begin!"
		@user_input = gets.strip.downcase
		if @user_input == 'p'
			slots_start
		else
			puts "Please type 'p' to pull the leaver and begin:"
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
				winner
			when [2, 2, 2]
				puts "Congratulations, you won!"
				winner
			when [3, 3, 3]
				puts "Congratulations, you won!"
				winner
			else 
				puts "You lost! How sad, am I right....."
				loser
		end
		puts "Would you like to play again (y/n)?"
		yes_no = gets.strip
		if yes_no == "y"
			start
		elsif yes_no == "n"
			
		else
			puts "Type either 'y' or 'n' to continue playing or to quit....it's simple stuff here"
		end
	end

end
