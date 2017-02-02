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
    if response == card.answer
      true
      @correct += 1
    else
      response != card.answer
      false
      @correct += 1
    end
  end

  def feedback
    "Correct!"
  end
  #
  # def feedback
  #   if response == true
  #     "Correct!"
  #   else
  #     "Incorrect."
  #   end
  # end

end
