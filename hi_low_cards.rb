require_relative 'deck'
require_relative 'player'

class HiLoCards
  def initialize(player)
    @player = player
    puts "Welcome to HiLow with Cards, #{@player.name}"
    menu_options
  end
end

def random_card_1
  new_deck = Deck.new
  random_number = rand(1..53)
  @random_card_1 = new_deck.cards[random_number]
  puts "Card 1: #{@random_card_1.rank} #{@random_card_1.suit}"
  higher_or_lower
end

def random_card_2
  new_deck = Deck.new
  random_number = rand(1..53)
  @random_card_2 = new_deck.cards[random_number]
  puts "Card 2: #{@random_card_2.rank} #{@random_card_2.suit}"
end

def menu_options
  puts "How much would you like to bet?"
  print "> "
  input_bet
end

def input_bet
  @bet = gets.strip
  if @bet != 'exit'
  @bet = @bet.to_i
  random_card_1
  end
end

def higher_or_lower
  puts "Will the next card be higher or lower?"
  print "> "
  input_hilo
end

def input_hilo
  input_hilo = gets.strip
  if input_hilo == 'higher'
    random_card_2
    if @random_card_1.rank < @random_card_2.rank
      winner
    else
      rekt
    end
  elsif input_hilo == 'lower'
    random_card_2
    if @random_card_1.rank > @random_card_2.rank
      winner
    elsif
      rekt
    end
    menu_options
  else
    puts "Enter a valid option"
    menu_options
  end
end

def winner
  puts "WINNER!"
  @player.wallet.amount = @player.wallet.amount + @bet
  puts "Wallet: #{@player.wallet.amount}"
  menu_options
end

def rekt
  puts "REKT"
  @player.wallet.amount = @player.wallet.amount - @bet
  puts "Wallet: #{@player.wallet.amount}"
end
