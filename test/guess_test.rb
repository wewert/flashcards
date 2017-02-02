require 'minitest/autorun'
require 'minitest/pride'
require './lib/card'
require './lib/guess'
require 'pry'

class GuessTest < MiniTest::Test

  def test_if_there_is_a_guess
    card = Card.new("What is the capital of Alaska?", "Juneau")
    guess = Guess.new("Juneau", card)
    assert_equal card, guess.card
  end

  def test_there_is_a_response
    card = Card.new("What is the capital of Alaska?", "Juneau")
    guess = Guess.new("Juneau", card)
    assert_equal "Juneau", guess.response
  end

  def test_it_is_correct
    card = Card.new("What is the capital of Alaska?", "Juneau")
    guess = Guess.new("Juneau", card)
    assert guess.correct?
  end

  def test_there_is_feedback
    card = Card.new("What is the capital of Alaska?", "Juneau")
    guess = Guess.new("Juneau", card)
    assert_equal "Correct!", guess.feedback
  end

  def test_there_is_another_card
    card = Card.new("Which planet is closest to the sun?", "Mercury")
    guess = Guess.new("Saturn", card)
    assert_equal card, guess.card
    assert_equal "Saturn", guess.response
    assert_equal false, guess.correct?
    assert_equal "Incorrect.", guess.feedback
  end
  
end
