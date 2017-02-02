require './lib/card'
require './lib/deck'
require './lib/guess'
require 'pry'

class Round

  attr_reader :deck, :guesses, :correct, :count, :current_card

  def initialize(deck)
    @deck = deck
    @guesses = []
    @current_card = nil
    @correct = 0
    @count = 0
  end

  def current_card
    @current_card = deck.deck.shift
  end

  def record_guess(guess)
    guess_1 = Guess.new(guess, current_card)
    @guesses << Guess.new(guess_1, current_card)
    guess_1 = @guesses.last
    if guess_1.correct?
      @correct += 1
      @guesses << "Correct!"
     else
      @guesses << "Incorrect."
    end
    #@current_card += 1
    guess_1
  end

   def record_guess_count
     @guesss.count
   end

   def percent_correct
     (@correct.to_f/guesses.count) * 100
   end

end
