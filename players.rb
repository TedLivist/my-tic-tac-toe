class Players
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
end