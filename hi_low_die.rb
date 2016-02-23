require_relative 'dice'
require_relative 'player'

class HiLoDie

  def initialize(player)
    @player = player
    hi_lo_die_menu
  end
end

def new_rolls
  @die_1 = Dice.new(6).roll
  @die_2 = Dice.new(6).roll
end

def hi_lo_die_menu
  new_rolls
  puts "Welcome to HiLo with DICE, #{@player.name}!"
  bet_message
end

def bet_message
  puts "How much would you like to bet?"
  print "> "
  input_bet
end

def input_bet
  input = gets.strip.to_f
  @bet = input
  first_die
end

def first_die
  puts "Die 1: #{@die_1}"
  higher_or_lower_message
end

def higher_or_lower_message
  puts "Next roll: Higher or Lower?"
  print "> "
  higher_or_lower
end

def higher_or_lower
  input = gets.strip
  if input == 'higher'
    higher
  elsif input == 'lower'
    lower
  elsif input == 'exit'

  else
    puts "Please Enter A Valid Option"
    hi_lo_die_menu
  end
end

def higher
  if @die_1 < @die_2
    puts "Die 2: #{@die_2}"
    winner
  elsif
    @die_1 > @die_2
    puts "Die 2: #{@die_2}"
    rekt
  else
  end
end

def lower
  if @die_1 > @die_2
    puts "Die 2: #{@die_2}"
    winner
  elsif
    puts "Die 2: #{@die_2}"
    @die_1 < @die_2
  else
    rekt
  end
end

def winner
  puts "WINNER!"
  @player.wallet.amount = @player.wallet.amount + @bet
  puts "Wallet: #{@player.wallet.amount}"
  hi_lo_die_menu
end

def rekt
  puts "REKT"
  @player.wallet.amount = @player.wallet.amount - @bet
  puts "Wallet: #{@player.wallet.amount}"
  hi_lo_die_menu
end
