require_relative 'card'

class Black_hand
  attr_accessor :players
  
  def intialize
  @players = 2
  end

  def deal_hand
    for players.each do
      card1 = deck.draw_card
      card2 = deck.draw_card
      num1 = card_value(card1)
      num2 = card_value(card2)
      @sum = num1 + num2
      puts card1
      puts card2
      puts "The sum of the two cards is #{sum}"
    end
  end



  def card_value(card)
    case deck.ranks
       when 'A'
        @card_value = 1
      when 'J', 'Q', 'K'
        @card_value = 10
      else
        @card_value = deck.ranks.to_i
     end
     card_value
   end
end

db = Black_hand.new