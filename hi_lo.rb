require_relative 'player'

class HiLo
  def initialize(player)
    @player = player
    puts "Welcome to HiLo #{player.name}!"
    puts "Wallet: #{player.wallet.amount}"
    enter_bet
  end
end

def random_numbers
  random_numbers = rand(1..101)
  @num_1 = random_numbers
  random_numbers = rand(1..101)
  @num_2 = random_numbers
end

def enter_bet
  puts "Please enter your bet:"
  print "> "
  @bet = gets.strip.to_i
  if @bet == 'exit'
    exit_to_game_choice
  end
  new_hilo
end

def new_hilo
  random_numbers
  puts "Is the next number higher or lower than #{@num_1}?"
  input = gets.strip
  case input
  when 'exit'
    exit_to_game_choice
  when 'higher'
    puts "Second Number: #{@num_2}"
    if @num_1 < @num_2
      winner
    elsif @num_1 > @num_2
      rekt
    else
      puts "Enter Higher or Lower"
      enter_bet
    end
  when 'lower'
    puts "Second Number: #{@num_2}"
    if @num_1 > @num_2
      winner
    elsif @num_1 < @num_2
      rekt
    else
      enter_bet
    end
  else
    puts "Bad input, try again!"
    enter_bet
  end
end

def winner
  puts "WINNER!"
  @player.wallet.amount = @player.wallet.amount + @bet
  puts "Wallet: #{@player.wallet.amount}"
  enter_bet
end

def rekt
  puts "REKT"
  @player.wallet.amount = @player.wallet.amount - @bet
  puts "Wallet: #{@player.wallet.amount}"
  enter_bet
end

def exit_to_game_choice
  @game_choice
end






# HighLo
# place a bet
# player picks a number between 1 - 100
# validate the input is between 1 - 100
# have computer pick a random between 1 - 100
# whos higher
# calculate wins / loss
# rebalance wallet
