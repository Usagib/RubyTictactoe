# Classic TicTacToe Game in Ruby 
### Objectives
Put into practice the main concepts of Object Oriented Programming. Particularly, classes and access to their attributes.

---
original project specification at The Odin Project: https://www.theodinproject.com/courses/ruby-programming/lessons/oop

---
# Instructions
## Preparations
- Run bin\main.rb
- Type in your first player name followed by [enter]
- You will be randomly assigned either X or O
- Type in your second player name and you will be automatically assigned the remaining symbol
## Game Logic
- The game is played inside a 3x3 grid numbered from 1-9
- Players takes turns playing
- Current player's turn name is displayed at anytime
- Each player selects a number to replace his symbol with
- Whenever three alike symbols are aligned, the corresponding player wins
- if there are no cells available in the grid and there has been no winner, a tie it is!
### Align = Win cinditions
- Horizontal align whenever cells 1/2/3 or 4/5/6 or 7/8/9 have the same symbol
- Vertical align whenever cells 1/4/7 or 2/5/8 or 3/6/9 have the same symbol
- Diagonal align whenever cells 1/5/9 or 3/5/7 have the same symbol
# Have Fun! 
