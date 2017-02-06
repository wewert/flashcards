require './lib/guess'
require './lib/card_generator'
require './lib/card'
require './lib/deck'
require 'pry'

class Round
  attr_reader :deck, :guess, :guesses, :round_counter, :number_correct

  def initialize(cards)
    @deck = cards
    @guess = []
    @guesses = []
    @round_counter = 0
    @number_correct = number_correct
  end

  def current_card
    @deck.cards[round_counter]
  end

  def record_guess(user_guess, card)
    @guesses << Guess.new(user_guess, current_card)
    @round_counter += 1
  end

  def number_correct
    number_correct = guesses.find_all do |guess|
      guess.correct?
    end
    number_correct.count
  end

   def percent_correct
     correct_sum = (@deck.count/number_correct) / 2
     percent = (correct_sum * 100) / 2
   end

  def start
    puts "Welcome to the jungle! You have five questions."

    until round_counter == deck.count
      puts "This card number #{@round_counter + 1} out of #{deck.count}."
      puts "Question: #{current_card.question}"
      answer = gets.chomp
      record_guess(answer, current_card)
      puts @guesses[round_counter - 1].feedback
    end

    puts "Thanks for playing!!!"
    puts "You got #{number_correct} out of #{deck.count} right."
    puts "Damn! That's #{percent_correct.to_i}% right!"
  end

end
