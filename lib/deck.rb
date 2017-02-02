class Deck

  attr_reader :deck

  def initialize(deck)
    @deck = deck
  end

  def cards
    cards = deck
  end

  def count
    deck.length
  end

end
