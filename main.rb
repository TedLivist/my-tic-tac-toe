def player_assignment
  puts "Welcome to this tic-tac-toe game"
  puts "Please, put in your name Player 1"
  player_one = gets.chomp
  sleep 0.5
  puts "Player 1 your marker is 'X'"
  puts ""
  puts "Please, put in your name Player 2"
  player_two = gets.chomp
  sleep 0.5
  puts "Player 2 your marker is 'O'"
  puts ""
  [player_one, player_two]
end

def board(arr)
  puts "+---+---+---+"
  puts "| #{arr[0]} | #{arr[1]} | #{arr[2]} |"
  puts "+---+---+---+"
  puts "| #{arr[3]} | #{arr[4]} | #{arr[5]} |"
  puts "+---+---+---+"
  puts "| #{arr[6]} | #{arr[7]} | #{arr[8]} |"
  puts "+---+---+---+"
end

def play
  cell = [1,2,3,4,5,6,7,8,9]
  players = player_assignment
  board(cell)
end