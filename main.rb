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
  (0..8).each do |i|
    if i.even?
      puts "It's #{players[0]}'s turn!"
      player_mark = 'X'
      begin
        puts "Select a number"
        input = gets.chomp.to_i
        if (input.nil? or input < 1 or input > 9 or !cell[input - 1].is_a?(Integer)) then
          raise StandardError, input
        end
      rescue StandardError
        puts "Select a number between 1 and 9"
        puts ""
        retry
      end
      cell[input - 1] = player_mark
      board(cell)
    else
      puts "It's #{players[1]}'s turn!"
      player_mark = 'O'
      cell[input - 1] = player_mark
      board(cell)
    end
end