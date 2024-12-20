require "./lib/card"
require "./lib/turn"
require "./lib/deck"
require "./lib/round"

puts "Welcome to my garbage trivia game! Let me shuffle some cards up, I worked very hard to make them, so I'm gunna take my time here..."
puts "Alright, alright, that's some nice laminated papers, pretend you can here me successfully doing a bridge shuffle..."
card_1 = Card.new("Who is the smarty who made this game?", "Jacob", :Misc)
card_2 = Card.new("What green capped hero saves the title named princess from the villain named Ganon?", "Link", :Games)
card_3 = Card.new("Shows like Stranger Things and Adventure Time started as ideas formed and based off of what table top roleplaying game?", "Dungeons and Dragons", :Games)
puts "Ahh dang, I dropped em. One second..."
card_4 = Card.new("What British Naval Hero lost both an eye and an arm in his service to his country?", "Nelson", :History)
card_5 = Card.new("What eventful year had the assassination of Robert Kennedy, MLK Jr, and the Chicago Riots?", "1968", :History)
puts "Darn, there's one under the table leg here... Annnnd, got it."
card_6 = Card.new("What animal was hunted to near extinction, its' furs often turned into hats, and is primarily associated with Canada?", "Beaver", :History)
deck = Deck.new([card_1, card_2, card_3, card_4, card_5, card_6])
puts "Okay! Let's get started!"
round = Round.new(deck)

puts "ROUND ONE. (There is only going to be one, so enjoy it.) BEGIN!"

deck.cards.each do |card|
    p prompt = card.question
    guess = gets.chomp()
    round.take_turn(guess)
    p round.turns.last.feedback
end

puts "Got through all the cards, huh? Lemme see how you did..."
puts "Oh?"
puts "Ooo..."
puts "You really thought that, huh? Interesting..."
puts "Alright. Time to tell you how you did."


puts "You got " + round.percent_correct.to_s + "%. Are you proud of yourself?"

puts "You knew " + round.percent_correct_by_category(:Games).to_s + "% of my strange game facts."

puts "But you only got " + round.percent_correct_by_category(:History).to_s + "% out of the history questions. Did you enjoy the struggle here?"

puts "Well. Hours of my blood, sweat, and tears... for 2 minutes of your time. Thanks for playing, I guess. You could always play again, if you wanted me to feel better."

