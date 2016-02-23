require_relative 'b_deck'
require_relative 'dealer_hand'


class BlackHand

  def initialize(player)
  @player = player
  play_game
  end


  def play_game

    @player_cards = []
    @total_player = 0
    @total_dealer = 0
    puts "-----------------Welcome to Black Jack!------------------"
    puts "/////////////////////************////////////////////////"
    puts "---------------------------------------------------------"
    puts
    start
    @deck = Deck.new
    @dealer = Dealer_Hand.new(@deck)
    sleep 1
    #betting and wallet instances go here
    puts
    puts "The dealer draws two cards for the player"
    player_card1 = @deck.draw_card
    player_card2 = @deck.draw_card
    sleep 2
    @player_cards << player_card1
    @player_cards << player_card2
    puts "--------------------------------------"
    puts "The player's cards are..."
    puts @player_cards
    puts "--------------------------------------"
    sleep 1
    puts
    puts
    puts "The dealer draws two cards for himself."
    puts "---------------------------------------"
    puts "The dealer first card"
    puts @dealer.dealer_cards.last
    puts "The second card is hidden"
    puts "---------------------------------------"
    hit_me
  end

  def hit_me
    sleep 1
    puts
    puts
    puts "-------------------------------"
    puts "Do you want another card? (y/n)"
    puts "-------------------------------"
    answ = gets.strip

    if answ == 'y'

      add_card

        @player_cards.each do |i|
        @total_player += @deck.card_value(i, @player_cards)
      end
        @dealer.dealer_cards.each do |i|
        @total_dealer += @deck.card_value(i, @dealer.dealer_cards)
      end
      win_lose(@total_player, @total_dealer)

      # hit_me

    elsif answ == 'n'
      check_value(@player_cards, @dealer.dealer_cards)
      if @total_dealer >= 17

        win_lose(@total_player, @total_dealer)
      elsif
        @total_dealer < 17
        @dealer.hit_you

          if @total_dealer < 17
            check_value(@player_cards, @dealer.dealer_cards)
            hit_me
          elsif @total_dealer > 17
            check_value(@player_cards, @dealer.dealer_cards)
            win_lose(@total_player, @total_dealer)
          end
      else
        puts "Invalid input"
        hit_me
      end
    end

  end

  def add_card
    new_card = @deck.draw_card
      @player_cards << new_card
      sleep 1
      puts "The player draws another card... #{new_card}"
      sleep 2
      puts "The player's cards are..."
      puts @player_cards

    if @total_dealer >= 17
      puts
      puts "The dealer stays."
      puts
    else
      puts "The dealers cards are..."
      @dealer.hit_you
    end

  end


  def win_lose (player_total, dealer_total)
    if player_total == 21
     win
    elsif player_total > 21 || dealer_total == 21
      lose
    elsif dealer_total > 21 && player_total <= 21
      win
    elsif (dealer_total < 21 && player_total < 21) && (dealer_total > player_total)
      lose
    elsif dealer_total > 21
      win
    else
      hit_me
    end
  end

  def win
    puts "------------------------------------------------------"
    puts "$$$$$$$$$$$$$$$$$$$$$$ You Win! $$$$$$$$$$$$$$$$$$$$$$"
    puts "------------------------------------------------------"
    puts "The dealer's cards"
    puts @dealer.dealer_cards
    puts
    puts "The players cards"
    puts @player_cards
    @player.wallet.amount += @bet_black
    puts "Your wallet now holds $#{@player.wallet.amount}"

    puts "------------------------------------------------------"
    puts "$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$"
    puts "------------------------------------------------------"
  end

  def lose
    puts "--------------------------------------------------------"
    puts "~~~~~~~~~~~~~~~~~~~~~~ You Lose! ~~~~~~~~~~~~~~~~~~~~~~~"
    puts "--------------------------------------------------------"
    puts "The dealer's cards"
    puts @dealer.dealer_cards
    puts
    puts "The players cards"
    puts @player_cards
    @player.wallet.amount += (-1 * @bet_black)
    puts "Your wallet now holds $#{@player.wallet.amount}"
    puts "--------------------------------------------------------"
    puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
    puts "--------------------------------------------------------"
  end

  def check_value (player_cards, dealer_cards)
      @player_cards.each do |i|
        @total_player += @deck.card_value(i, @player_cards)
      end
        @dealer.dealer_cards.each do |i|
        @total_dealer += @deck.card_value(i, @dealer.dealer_cards)
      end
  end

  def start
    puts "Your wallet currently has $#{@player.wallet.amount}"
    puts "Please enter your bet"
    @bet_black = gets.strip.to_f
    if @player.wallet.amount < @bet_black
      puts "****************************************"
      puts "You cannnot bet more money than you have."
      puts "****************************************"
      start
    else

    end
  end
end
