require_relative 'card'
require_relative 'guess'
require_relative 'deck'
require_relative 'round'

card = CardGenerator.new("./lib/cards.txt").card
playing_card = Deck.new(card)
turn = Round.new(card)

#start game
#puts "Welcome! You're playing with 4 cards."
#puts "This is card number 1 out of 4."
#puts "What is the symbol before the variable name to make an instance variable?"
#user_input = gets.chomp
#output correct or incorrect
#Repeat for up to 4 guesses
#output how many correct answers(need counter)
#Also need percentage of correct answers
