require_relative 'player'

class HiLo
  def initialize(player)
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
  new_hilo
end

def new_hilo
  random_numbers
  puts "Is the next number higher or lower than #{@num_1}?"
  input = gets.strip
  case input
  when 'higher'
    puts "Second Numer: #{@num_2}"
    if @num_1 < @num_2
      puts "YOU'RE CORRECT"
    elsif @num1 > @num_2
      puts "REKT"
    else
      new_hilo
    end
  when 'lower'
    puts "Second Number: #{@num_2}"
    if @num_1 > @num_2
      puts "YOU'RE CORRECT"
      winner
      new_hilo
    elsif @num_1 < @num_2
      puts "REKT"
      rekt
      new_hilo
    else
      new_hilo
    end
  else
    puts "Bad input, try again!"
    new_hilo
  end
end

def winner
  player.wallet.amount = player.wallet.amount + @bet
  puts "Wallet: #{player.wallet.amount}"
end

def rekt
  player.wallet.amount = player.wallet.amount - @bet
  puts "Wallet: #{player.wallet.amount}"
end







# HighLo
# place a bet
# player picks a number between 1 - 100
# validate the input is between 1 - 100
# have computer pick a random between 1 - 100
# whos higher
# calculate wins / loss
# rebalance wallet
