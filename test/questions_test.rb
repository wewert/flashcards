require 'minitest/autorun'
require 'minitest/pride'
require './lib/card'
require './lib/deck'
require './lib/guess'
require './lib/round'
require './lib/card_generator'
require 'pry'

class QuestionsTest < Minitest::Test

  def test_there_are_cards
    #filename = "./lib/questions.txt"
    cards = CardGenerator.new("./lib/questions.txt")
    assert File.exist?("./lib/questions.txt")
  end

  def test_card_from_questiontxt_file
    cards = CardGenerator.new("./lib/questions.txt")
    assert_equal 5, card_generator.cards.count
  end

end
