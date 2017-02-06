require './lib/card'
require './lib/deck'
require './lib/round'

class CardGenerator
  attr_reader :card_file, :card, :array

  def initialize(filename)
    @card_file = filename
    @card = Array.new
  end

  def cards
    File.readlines(card_file).map do |x|
    card << x.split(", ")
    index_line = x.split(", ")
    Card.new(index_line[0], index_line[1].chomp)
    end
  end

end
