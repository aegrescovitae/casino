class Dice
  attr_accessor :die_1 :die_2
  def initialize
    random = rand(1..7)
    @die_1 = random
    random = rand(1..7)
    @die_2 = random
  end
end

dice = Dice.new
puts "Die 1: #{@die_1}"
puts "Die 2: #{@die_2}"
