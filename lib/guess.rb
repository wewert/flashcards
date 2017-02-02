require './lib/card'
require './lib/deck'
require './lib/round'

class Guess

  attr_reader :guess, :card, :correct

  def initialize(guess, card)
    @guess = guess
    @card = card
    @correct = 0
  end

  def response
      response = @guess
  end

  def correct?
    response == card.answer
    @correct += 1
  end

  def feedback
    if correct? == true
    "Correct!"
    else
    "Incorrect."
    end
  end

end
