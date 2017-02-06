require './lib/card'
require './lib/deck'
require './lib/round'
require 'pry'

class Guess
attr_reader :user_guess, :card, :feedback, :total_correct

  def initialize(user_guess, card)
    @user_guess = user_guess
    @card = card
  end

  def correct?
    user_guess == card.answer
  end

  def feedback
    if correct?
      "Correct!"
    else
      "Incorrect."
    end
  end

end
