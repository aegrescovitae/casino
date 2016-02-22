# require_relative 'player'

class HiLo
  attr_accessor :num_1, :num_2
  def initialize
    @num_1 = num_1
    @num_2 = num_2
  end
end

#def player
#  player = @players.name
#end

def menu
  puts "-- WELCOME TO HIGH-LOW --"
  puts "HELLO #{@players}"
  random_numbers
  input_bet
end

def random_numbers
  random_numbers = rand(1..101)
  @num_1 = random_numbers
  random_numbers = rand(1..101)
  @num_2 = random_numbers
end

def input_bet
  puts "Please enter your bet amount!"
  print "> "
  @bet = gets.strip.to_f
  hi_lo_game
end

def hi_lo_game
  puts "First Number: #{@num_1}"
  puts "Do you think the next number"
  puts "will be higher, or lower?"
  print "> "
  input_hilo
end

def input_hilo
  @input = gets.strip
  if @input == 'higher'
    puts "#{@num_2}"
    high
  elsif @input == 'lower'
    puts "#{@num_2}"
    low
  else
    puts 'Please enter high or low'
    input_hilo
  end
end

def high
  if @num_1 > @num_2
    puts 'false'
  else
    puts 'correct'
  end
  menu
end

def low
  if @num_1 < @num_2
    puts "false"
  else
    puts "correct"
  end
  menu
end

new_game = HiLo.new
menu




# HighLo
# place a bet
# player picks a number between 1 - 100
# validate the input is between 1 - 100
# have computer pick a random between 1 - 100
# whos higher
# calculate wins / loss
# rebalance wallet
