require './lib/card'
require './lib/guess'
require './lib/deck'
require './lib/round'
require './lib/card_generator'

filename = "./lib/questions.txt"
cards = CardGenerator.new(filename).cards
deck = Deck.new(cards)
round = Round.new(deck)

round.start


#start game
#puts "Welcome! You're playing with 4 cards."
#puts "This is card number 1 out of 4."
#puts "What is the symbol before the variable name to make an instance variable?"
#user_input = gets.chomp
#output correct or incorrect
#Repeat for up to 4 guesses
#output how many correct answers(need counter)
#Also need percentage of correct answers
