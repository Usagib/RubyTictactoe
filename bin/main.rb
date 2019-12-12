#!/usr/bin/env ruby

def findSecondChar(val)
    if val == "X"
        return "O"
    else
        return "X"
    end
end

puts "Welcome from the world Tic Tac Toe"
puts "Enter your first player name?"
firstPlayer = gets.chomp
puts "Welcome #{firstPlayer}, Please Choose your (X / 0):"
firstChar = gets.chomp
puts "#{firstPlayer} is choosing #{firstChar}"
puts "####################"
puts "Enter your second player name?"
secondPlayer = gets.chomp
secondChar = findSecondChar(firstChar)
puts "#{secondPlayer} is auto choosing #{secondChar}"
print "###\n ###\n ###\n"
puts "Game is starting ....."
puts "#{['1', '2', '3']}"
puts "#{['4', '5', '6']}"
puts "#{['7', '8', '9']}"

game_on = true
i = 0 
winner = true
while game_on
  i = i + 1
  player = i % 2  == 0 ? firstPlayer : secondPlayer; 
  puts "#{player} turn , choose a cell[1-9]:"
  input = gets.chomp
  
  if winner #winner pattern match 
    game_on = false
  end 
end 

puts "Winner: #{secondPlayer}"
