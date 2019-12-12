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


