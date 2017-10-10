require_relative 'players'
require_relative 'questions'

print "Player 1's name: "           # get answers from the user 
p1_name = gets.chomp
print "Player 2's name: "
p2_name = gets.chomp

player1 = Players.new(p1_name)           # create new platers 
player2 = Players.new(p2_name)

current_player = 1                             # set current player to player 1

while (player1.alive? && player2.alive?) do     # while loopf for the duration of the game 
	
  player = (current_player == 1) ? player1 : player2 

  question = Questions.new()                    # create new question of random numbers to add 

  puts "************ NEW TURN ***********"

  puts "#{player.name}: #{question.print}"          # display new question for current player 
 

  answer = gets.chomp.to_i

  if answer == question.answer                  # answer possibilities 
  puts "Correct!"
  puts "#{player1.name} #{player1.lives}/3 lives and #{player2.name} #{player2.lives}/3 lives"
  else
    player.lives -= 1                           # minus one lives from current player 
    puts "Incorrect. Are you serious?"
    puts "#{player1.name} #{player1.lives}/3 lives and #{player2.name} #{player2.lives}/3 lives"
  end

  current_player = (current_player + 1) % 2     # switch player 
end


if player1.lives == 0
   puts "---#{player2.name} wins with #{player2.lives}/3 lives"     # calculate final lives 
elsif player2.lives == 0
   puts "---#{player1.name} wins with #{player1.lives}/3 lives"
end

puts "********** GAME OVER ***********"












































































