require_relative 'b_deck'

class Dealer_Hand
  attr_accessor :dealer_cards

  
  def initialize(deck)
    @deck = deck
    @dealer_cards = []
    play_game_dealer
  end
  
  def play_game_dealer
   
    player_card1 = @deck.draw_card
    player_card2 = @deck.draw_card
    @dealer_cards << player_card1
    @dealer_cards << player_card2
    
  end 

  def hit_you
    new_card = @deck.draw_card
    @dealer_cards << new_card
    puts @dealer_cards[1..10]
    puts "The first card is hidden"
  end

end