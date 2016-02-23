require_relative 'b_card'

class Deck
  # Getter and Setter methods for rank, suit and color
  attr_accessor :cards
  # Gets called when you call the new method to create an instance
  # deck = Deck.new

  def initialize
    @ranks = %w(A 2 3 4 5 6 7 8 9 10 J Q K)
    @suits = %w(Spades Diamonds Clubs Hearts)
    @cards = []
    generate_deck
  end

  def generate_deck
    @suits.each do |suit|
      @ranks.size.times do |i|
        # Ternary Operator
        color = (i % 2 == 0) ? 'Black' : 'Red'
        @cards << Card.new(@ranks[i], suit, color)
      end
    end
  end

  def draw_card
    @cards.shuffle.pop
  end

  def card_value(card, player_card)
    case card.rank
      when 'A'
        if (player_card.index('A') == 0 || player_card.index('A') == 1)
          card_value = 11
        else
          card_value = 1
        end
      when 'J', 'Q', 'K'
        card_value = 10
      else
        card_value = card.rank.to_i
    end
    card_value
  end
end
