require_relative 'player'

class HiLo
  def initialize(player)
    puts "Welcome to HiLo #{player.name}!"
    puts "Wallet: #{player.wallet.amount}"
    input_bet
  end
end

def player
 player = @players.name
end

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







# HighLo
# place a bet
# player picks a number between 1 - 100
# validate the input is between 1 - 100
# have computer pick a random between 1 - 100
# whos higher
# calculate wins / loss
# rebalance wallet
