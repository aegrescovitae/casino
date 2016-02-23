require_relative 'hi_lo'
require_relative 'slots'

class GameMenu

	def initialize
		puts "Welcome inside the Casino! What game would you like to play first?:"
		puts "Please make your game selection via by typing 1 or 2"
		puts "1: Hi-Low"
		puts "2: Slots"
		@game_menu_input = gets.strip.to_i
		menu_logic
	end

	def menu_logic
		case @game_menu_input
			when 1
				Highlo.new
			when 2
				Slots.new
			else
				puts "Please make a selection between 1 - 2!"
		end
		GameMenu.new
	end
end

