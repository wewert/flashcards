require 'minitest/autorun'
require 'minitest/pride'
require './lib/card'
require 'pry'

class CardTest < Minitest::Test

  def test_ask_a_question
    card = Card.new("What is the capital of Alaska?", "Juneau")
    assert_equal "What is the capital of Alaska?", card.question
  end

  def test_has_answer
    card = Card.new("What is the capital of Alaska?", "Juneau")
    assert_equal "Juneau", card.answer
  end

end
