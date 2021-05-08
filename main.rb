require_relative './players.rb'
require_relative './board.rb'
require_relative './winner_check.rb'

def play
  cell = [1,2,3,4,5,6,7,8,9]
  players = Players.new.player_assignment
  brd = Board.new
  brd.board(cell)
  [0,1,2,3,4,5,6,7,8,9].each do |i|
    if i.even?
      puts "It's #{players[0]}'s turn!"
      player_mark = 'X'
      begin
        puts "Select a number"
        input = gets.chomp.to_i
        puts ""
        if (input.nil? or input < 1 or input > 9 or !cell[input - 1].is_a?(Integer)) then
          raise StandardError, input
        end
      rescue StandardError
        puts "Select a number between 1 and 9"
        puts ""
        retry
      end
      cell[input - 1] = player_mark
      check = WinnerCheck.new
      check.check_win(players[0], player_mark, cell)
      if check.win?
        brd.board(cell)
        puts "#{players[0]} is the winner!"
        repeat_game
        break
      end
      brd.board(cell)
    elsif i.odd? and i != 9
      puts "It's #{players[1]}'s turn!"
      player_mark = 'O'
      begin
        puts "Select a number"
        input = gets.chomp.to_i
        puts ""
        if (input.nil? or input < 1 or input > 9 or !cell[input - 1].is_a?(Integer)) then
          raise StandardError, input
        end
      rescue StandardError
        puts "Select a number between 1 and 9"
        puts ""
        retry
      end
      cell[input - 1] = player_mark
      check = WinnerCheck.new
      check.check_win(players[1], player_mark, cell)
      if check.win?
        brd.board(cell)
        puts "#{players[1]} is the winner!"
        repeat_game
        break
      end
      brd.board(cell)
    elsif i == 9
      puts ""
      puts "DRAW"
      repeat_game
    end
  end
end

def repeat_game
  puts "Play another round? (Y/N)"
  answer = gets.chomp.downcase
  if answer == 'y'
    play
  else
    puts "Game over"
  end
end

play