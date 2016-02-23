# require_relative 'player'

class War
	def initialize #(player)
		#@player = player
		begin_game
	end

	# define winning logic
	def winning

	end

	# define losing logic
	def losing

	end


	def begin_game
		puts "Welcome to WAR; I hope you're ready for a battle!"
		puts "please enter your wager/bet to begin:"
		@war_bet = gets.strip.to_i
			
		end

	end

end

War.new#(player)