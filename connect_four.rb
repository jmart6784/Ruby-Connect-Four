class Connect_four
  Players = Struct.new(:name)

  def initialize
    puts "🔴  Enter your name"
    name_red = "🔴  " + gets.chomp
    puts "🔵  Enter your name"
    name_blue = "🔵  " + gets.chomp
    @player_red = Players.new(name_red)
    @player_blue = Players.new(name_blue)
    reset_board
  end

  @@board_map = [
    ["⚪", "⚪", "⚪", "⚪", "⚪", "⚪", "⚪"],
    ["⚪", "⚪", "⚪", "⚪", "⚪", "⚪", "⚪"],
    ["⚪", "⚪", "⚪", "⚪", "⚪", "⚪", "⚪"],
    ["⚪", "⚪", "⚪", "⚪", "⚪", "⚪", "⚪"],
    ["⚪", "⚪", "⚪", "⚪", "⚪", "⚪", "⚪"],
    ["⚪", "⚪", "⚪", "⚪", "⚪", "⚪", "⚪"],
    "1  2  3  4  5  6  7"
  ]

  def reset_board
    @@board_map[0].map! { |x| x == "🔵" || x == "🔴"  ? "⚪" : x }
    @@board_map[1].map! { |x| x == "🔵" || x == "🔴"  ? "⚪" : x }
    @@board_map[2].map! { |x| x == "🔵" || x == "🔴"  ? "⚪" : x }  
    @@board_map[3].map! { |x| x == "🔵" || x == "🔴"  ? "⚪" : x }
    @@board_map[4].map! { |x| x == "🔵" || x == "🔴"  ? "⚪" : x }
    @@board_map[5].map! { |x| x == "🔵" || x == "🔴"  ? "⚪" : x }
    display
  end

  def display
    puts @@board_map[0].join("  ")
    puts @@board_map[1].join("  ")
    puts @@board_map[2].join("  ")
    puts @@board_map[3].join("  ")
    puts @@board_map[4].join("  ")
    puts @@board_map[5].join("  ")
    puts @@board_map[6]
  end

  def board(player)
    case @input
    when 0
      if @red_turn == true
        if @@board_map[5][0] == "⚪"
          @@board_map[5][0] = "🔴"
          display
        elsif @@board_map[4][0] == "⚪"
          @@board_map[4][0] = "🔴"
          display
        elsif @@board_map[3][0] == "⚪"
          @@board_map[3][0] = "🔴"
          display
        elsif @@board_map[2][0] == "⚪"
          @@board_map[2][0] = "🔴"
          display
        elsif @@board_map[1][0] == "⚪"
          @@board_map[1][0] = "🔴"
          display
        elsif @@board_map[0][0] == "⚪"
          @@board_map[0][0] = "🔴"
          display
        elsif @@board_map[0][0] != "⚪"
          puts "Error: Column full, Please choose another"
          turn(player)
        end
      elsif @blue_turn == true
        if @@board_map[5][0] == "⚪"
          @@board_map[5][0] = "🔵"
          display
        elsif @@board_map[4][0] == "⚪"
          @@board_map[4][0] = "🔵"
          display
        elsif @@board_map[3][0] == "⚪"
          @@board_map[3][0] = "🔵"
          display
        elsif @@board_map[2][0] == "⚪"
          @@board_map[2][0] = "🔵"
          display
        elsif @@board_map[1][0] == "⚪"
          @@board_map[1][0] = "🔵"
          display
        elsif @@board_map[0][0] == "⚪"
          @@board_map[0][0] = "🔵"
          display
        elsif @@board_map[0][0] != "⚪"
          puts "Error: Column full, Please choose another"
          turn(player)
        end
      else
        puts "turn ERROR"
      end
    when 1
      if @red_turn == true
        if @@board_map[5][1] == "⚪"
          @@board_map[5][1] = "🔴"
          display
        elsif @@board_map[4][1] == "⚪"
          @@board_map[4][1] = "🔴"
          display
        elsif @@board_map[3][1] == "⚪"
          @@board_map[3][1] = "🔴"
          display
        elsif @@board_map[2][1] == "⚪"
          @@board_map[2][1] = "🔴"
          display
        elsif @@board_map[1][1] == "⚪"
          @@board_map[1][1] = "🔴"
          display
        elsif @@board_map[0][1] == "⚪"
          @@board_map[0][1] = "🔴"
          display
        elsif @@board_map[0][1] != "⚪"
          puts "Error: Column full, Please choose another"
          turn(player)
        end
      elsif @blue_turn == true
        if @@board_map[5][1] == "⚪"
          @@board_map[5][1] = "🔵"
          display
        elsif @@board_map[4][1] == "⚪"
          @@board_map[4][1] = "🔵"
          display
        elsif @@board_map[3][1] == "⚪"
          @@board_map[3][1] = "🔵"
          display
        elsif @@board_map[2][1] == "⚪"
          @@board_map[2][1] = "🔵"
          display
        elsif @@board_map[1][1] == "⚪"
          @@board_map[1][1] = "🔵"
          display
          check_game_over
        elsif @@board_map[0][1] == "⚪"
          @@board_map[0][1] = "🔵"
          display
        elsif @@board_map[0][1] != "⚪"
          puts "Error: Column full, Please choose another"
          turn(player)
        end
      else
        puts "turn ERROR"
      end
    when 2
      if @red_turn == true
        if @@board_map[5][2] == "⚪"
          @@board_map[5][2] = "🔴"
          display
        elsif @@board_map[4][2] == "⚪"
          @@board_map[4][2] = "🔴"
          display
        elsif @@board_map[3][2] == "⚪"
          @@board_map[3][2] = "🔴"
          display
        elsif @@board_map[2][2] == "⚪"
          @@board_map[2][2] = "🔴"
          display
        elsif @@board_map[1][2] == "⚪"
          @@board_map[1][2] = "🔴"
          display
        elsif @@board_map[0][2] == "⚪"
          @@board_map[0][2] = "🔴"
          display
        elsif @@board_map[0][2] != "⚪"
          puts "Error: Column full, Please choose another"
          turn(player)
        end
      elsif @blue_turn == true
        if @@board_map[5][2] == "⚪"
          @@board_map[5][2] = "🔵"
          display
        elsif @@board_map[4][2] == "⚪"
          @@board_map[4][2] = "🔵"
          display
        elsif @@board_map[3][2] == "⚪"
          @@board_map[3][2] = "🔵"
          display
        elsif @@board_map[2][2] == "⚪"
          @@board_map[2][2] = "🔵"
          display
        elsif @@board_map[1][2] == "⚪"
          @@board_map[1][2] = "🔵"
          display
        elsif @@board_map[0][2] == "⚪"
          @@board_map[0][2] = "🔵"
          display
        elsif @@board_map[0][2] != "⚪"
          puts "Error: Column full, Please choose another"
          turn(player)
        end
      else
        puts "turn ERROR"
      end
    when 3
      if @red_turn == true
        if @@board_map[5][3] == "⚪"
          @@board_map[5][3] = "🔴"
          display
        elsif @@board_map[4][3] == "⚪"
          @@board_map[4][3] = "🔴"
          display
        elsif @@board_map[3][3] == "⚪"
          @@board_map[3][3] = "🔴"
          display
        elsif @@board_map[2][3] == "⚪"
          @@board_map[2][3] = "🔴"
          display
        elsif @@board_map[1][3] == "⚪"
          @@board_map[1][3] = "🔴"
          display
        elsif @@board_map[0][3] == "⚪"
          @@board_map[0][3] = "🔴"
          display
        elsif @@board_map[0][3] != "⚪"
          puts "Error: Column full, Please choose another"
          turn(player)
        end
      elsif @blue_turn == true
        if @@board_map[5][3] == "⚪"
          @@board_map[5][3] = "🔵"
          display
        elsif @@board_map[4][3] == "⚪"
          @@board_map[4][3] = "🔵"
          display
        elsif @@board_map[3][3] == "⚪"
          @@board_map[3][3] = "🔵"
          display
        elsif @@board_map[2][3] == "⚪"
          @@board_map[2][3] = "🔵"
          display
        elsif @@board_map[1][3] == "⚪"
          @@board_map[1][3] = "🔵"
          display
        elsif @@board_map[0][3] == "⚪"
          @@board_map[0][3] = "🔵"
          display
        elsif @@board_map[0][3] != "⚪"
          puts "Error: Column full, Please choose another"
          turn(player)
        end
      else
        puts "turn ERROR"
      end
    when 4
      if @red_turn == true
        if @@board_map[5][4] == "⚪"
          @@board_map[5][4] = "🔴"
          display
        elsif @@board_map[4][4] == "⚪"
          @@board_map[4][4] = "🔴"
          display
        elsif @@board_map[3][4] == "⚪"
          @@board_map[3][4] = "🔴"
          display
        elsif @@board_map[2][4] == "⚪"
          @@board_map[2][4] = "🔴"
          display
        elsif @@board_map[1][4] == "⚪"
          @@board_map[1][4] = "🔴"
          display
        elsif @@board_map[0][4] == "⚪"
          @@board_map[0][4] = "🔴"
          display
        elsif @@board_map[0][4] != "⚪"
          puts "Error: Column full, Please choose another"
          turn(player)
        end
      elsif @blue_turn == true
        if @@board_map[5][4] == "⚪"
          @@board_map[5][4] = "🔵"
          display
        elsif @@board_map[4][4] == "⚪"
          @@board_map[4][4] = "🔵"
          display
        elsif @@board_map[3][4] == "⚪"
          @@board_map[3][4] = "🔵"
          display
        elsif @@board_map[2][4] == "⚪"
          @@board_map[2][4] = "🔵"
          display
        elsif @@board_map[1][4] == "⚪"
          @@board_map[1][4] = "🔵"
          display
        elsif @@board_map[0][4] == "⚪"
          @@board_map[0][4] = "🔵"
          display
        elsif @@board_map[0][4] != "⚪"
          puts "Error: Column full, Please choose another"
          turn(player)
        end
      else
        puts "turn ERROR"
      end
    when 5
      if @red_turn == true
        if @@board_map[5][5] == "⚪"
          @@board_map[5][5] = "🔴"
          display
        elsif @@board_map[4][5] == "⚪"
          @@board_map[4][5] = "🔴"
          display
        elsif @@board_map[3][5] == "⚪"
          @@board_map[3][5] = "🔴"
          display
        elsif @@board_map[2][5] == "⚪"
          @@board_map[2][5] = "🔴"
          display
        elsif @@board_map[1][5] == "⚪"
          @@board_map[1][5] = "🔴"
          display
        elsif @@board_map[0][5] == "⚪"
          @@board_map[0][5] = "🔴"
          display
        elsif @@board_map[0][5] != "⚪"
          puts "Error: Column full, Please choose another"
          turn(player)
        end
      elsif @blue_turn == true
        if @@board_map[5][5] == "⚪"
          @@board_map[5][5] = "🔵"
          display
        elsif @@board_map[4][5] == "⚪"
          @@board_map[4][5] = "🔵"
          display
        elsif @@board_map[3][5] == "⚪"
          @@board_map[3][5] = "🔵"
          display
        elsif @@board_map[2][5] == "⚪"
          @@board_map[2][5] = "🔵"
          display
        elsif @@board_map[1][5] == "⚪"
          @@board_map[1][5] = "🔵"
          display
        elsif @@board_map[0][5] == "⚪"
          @@board_map[0][5] = "🔵"
          display
        elsif @@board_map[0][5] != "⚪"
          puts "Error: Column full, Please choose another"
          turn(player)
        end
      else
        puts "turn ERROR"
      end
    when 6
      if @red_turn == true
        if @@board_map[5][6] == "⚪"
          @@board_map[5][6] = "🔴"
          display
        elsif @@board_map[4][6] == "⚪"
          @@board_map[4][6] = "🔴"
          display
        elsif @@board_map[3][6] == "⚪"
          @@board_map[3][6] = "🔴"
          display
        elsif @@board_map[2][6] == "⚪"
          @@board_map[2][6] = "🔴"
          display
        elsif @@board_map[1][6] == "⚪"
          @@board_map[1][6] = "🔴"
          display
        elsif @@board_map[0][6] == "⚪"
          @@board_map[0][6] = "🔴"
          display
        elsif @@board_map[0][6] != "⚪"
          puts "Error: Column full, Please choose another"
          turn(player)
        end
      elsif @blue_turn == true
        if @@board_map[5][6] == "⚪"
          @@board_map[5][6] = "🔵"
          display
        elsif @@board_map[4][6] == "⚪"
          @@board_map[4][6] = "🔵"
          display
        elsif @@board_map[3][6] == "⚪"
          @@board_map[3][6] = "🔵"
          display
        elsif @@board_map[2][6] == "⚪"
          @@board_map[2][6] = "🔵"
          display
        elsif @@board_map[1][6] == "⚪"
          @@board_map[1][6] = "🔵"
          display
        elsif @@board_map[0][6] == "⚪"
          @@board_map[0][6] = "🔵"
          display
        elsif @@board_map[0][6] != "⚪"
          puts "Error: Column full, Please choose another"
          turn(player)
        end
      else
        puts "turn ERROR"
      end
    else
      puts "ERROR"
    end 
  end

  def turn(player)
    puts "#{player.name}, your turn."
    puts 'Place your piece in any column (1-7) or type "exit" to exit'
    input = gets.chomp

    if input.downcase == "exit"
      @exit = true
    else
      if input.to_i.between?(1, 7)
        @input = input.to_i - 1
        board(player)
        return input
      else
        puts "Invalid column number, try again"
        turn(player)
      end
    end
  end

  def play
    current_turn = 1
    player = nil
    42.times do
      if current_turn % 2 == 1
        @red_turn = true
        @blue_turn = false
        turn(@player_red)
        player = @player_red
      else 
        @red_turn = false
        @blue_turn = true
        turn(@player_blue)
        player = @player_blue
      end
      if @exit == true
        return exited
      end
      if check_game_over == true
        puts "#{player.name} wins!"
        return rematch
      end
      current_turn += 1
    end
    board(player)
    puts "Tie game"
    return rematch
  end

  def exited
    nil
  end

  def rematch
    puts "Play again? (y/n)"
    input = gets.chomp.downcase
    if input.downcase == 'y'
      reset_board
      return play
    elsif input == 'n'
      puts "Thanks for playing!"
      return false
    else
      rematch
    end
  end

  def check_game_over
    # red victory ⚪ 🔴 🔵
    #row6 - horizontal win
    if @@board_map[5][0] == "🔴" && @@board_map[5][1] == "🔴" && @@board_map[5][2] == "🔴" && @@board_map[5][3] == "🔴"
      return true
    elsif @@board_map[5][1] == "🔴" && @@board_map[5][2] == "🔴" && @@board_map[5][3] == "🔴" && @@board_map[5][4] == "🔴"
      return true
    elsif @@board_map[5][2] == "🔴" && @@board_map[5][3] == "🔴" && @@board_map[5][4] == "🔴" && @@board_map[5][5] == "🔴"
      return true
    elsif @@board_map[5][3] == "🔴" && @@board_map[5][4] == "🔴" && @@board_map[5][5] == "🔴" && @@board_map[5][6] == "🔴"
      return true
    #row 5 - horizontal win
    elsif @@board_map[4][0] == "🔴" && @@board_map[4][1] == "🔴" && @@board_map[4][2] == "🔴" && @@board_map[4][3] == "🔴"
        return true
    elsif @@board_map[4][1] == "🔴" && @@board_map[4][2] == "🔴" && @@board_map[4][3] == "🔴" && @@board_map[4][4] == "🔴"
      return true
    elsif @@board_map[4][2] == "🔴" && @@board_map[4][3] == "🔴" && @@board_map[4][4] == "🔴" && @@board_map[4][5] == "🔴"
      return true
    elsif @@board_map[4][3] == "🔴" && @@board_map[4][4] == "🔴" && @@board_map[4][5] == "🔴" && @@board_map[4][6] == "🔴"
      return true
    #row 4 - horizontal win
    elsif @@board_map[3][0] == "🔴" && @@board_map[3][1] == "🔴" && @@board_map[3][2] == "🔴" && @@board_map[3][3] == "🔴"
      return true
    elsif @@board_map[3][1] == "🔴" && @@board_map[3][2] == "🔴" && @@board_map[3][3] == "🔴" && @@board_map[3][4] == "🔴"
      return true
    elsif @@board_map[3][2] == "🔴" && @@board_map[3][3] == "🔴" && @@board_map[3][4] == "🔴" && @@board_map[3][5] == "🔴"
      return true
    elsif @@board_map[3][3] == "🔴" && @@board_map[3][4] == "🔴" && @@board_map[3][5] == "🔴" && @@board_map[3][6] == "🔴"
      return true
    #row 3 - horizontal win
    elsif @@board_map[2][0] == "🔴" && @@board_map[2][1] == "🔴" && @@board_map[2][2] == "🔴" && @@board_map[2][3] == "🔴"
      return true
    elsif @@board_map[2][1] == "🔴" && @@board_map[2][2] == "🔴" && @@board_map[2][3] == "🔴" && @@board_map[2][4] == "🔴"
      return true
    elsif @@board_map[2][2] == "🔴" && @@board_map[2][3] == "🔴" && @@board_map[2][4] == "🔴" && @@board_map[2][5] == "🔴"
      return true
    elsif @@board_map[2][3] == "🔴" && @@board_map[2][4] == "🔴" && @@board_map[2][5] == "🔴" && @@board_map[2][6] == "🔴"
      return true
    #row 2 - horizontal win
    elsif @@board_map[1][0] == "🔴" && @@board_map[1][1] == "🔴" && @@board_map[1][2] == "🔴" && @@board_map[1][3] == "🔴"
      return true
    elsif @@board_map[1][1] == "🔴" && @@board_map[1][2] == "🔴" && @@board_map[1][3] == "🔴" && @@board_map[1][4] == "🔴"
      return true
    elsif @@board_map[1][2] == "🔴" && @@board_map[1][3] == "🔴" && @@board_map[1][4] == "🔴" && @@board_map[1][5] == "🔴"
      return true
    elsif @@board_map[1][3] == "🔴" && @@board_map[1][4] == "🔴" && @@board_map[1][5] == "🔴" && @@board_map[1][6] == "🔴"
      return true
    #row 1 - horizontal win
    elsif @@board_map[0][0] == "🔴" && @@board_map[0][1] == "🔴" && @@board_map[0][2] == "🔴" && @@board_map[0][3] == "🔴"
      return true
    elsif @@board_map[0][1] == "🔴" && @@board_map[0][2] == "🔴" && @@board_map[0][3] == "🔴" && @@board_map[0][4] == "🔴"
      return true
    elsif @@board_map[0][2] == "🔴" && @@board_map[0][3] == "🔴" && @@board_map[0][4] == "🔴" && @@board_map[0][5] == "🔴"
      return true
    elsif @@board_map[0][3] == "🔴" && @@board_map[0][4] == "🔴" && @@board_map[0][5] == "🔴" && @@board_map[0][6] == "🔴"
      return true
    #vertical win
    # column 1 - vertical win
    elsif @@board_map[5][0] == "🔴" && @@board_map[4][0] == "🔴" && @@board_map[3][0] == "🔴" && @@board_map[2][0] == "🔴"
      return true
    elsif @@board_map[4][0] == "🔴" && @@board_map[3][0] == "🔴" && @@board_map[2][0] == "🔴" && @@board_map[1][0] == "🔴"
      return true
    elsif @@board_map[3][0] == "🔴" && @@board_map[2][0] == "🔴" && @@board_map[1][0] == "🔴" && @@board_map[0][0] == "🔴"
      return true
    # column 2 - vertical win
    elsif @@board_map[5][1] == "🔴" && @@board_map[4][1] == "🔴" && @@board_map[3][1] == "🔴" && @@board_map[2][1] == "🔴"
      return true
    elsif @@board_map[4][1] == "🔴" && @@board_map[3][1] == "🔴" && @@board_map[2][1] == "🔴" && @@board_map[1][1] == "🔴"
      return true
    elsif @@board_map[3][1] == "🔴" && @@board_map[2][1] == "🔴" && @@board_map[1][1] == "🔴" && @@board_map[0][1] == "🔴"
      return true
    # column 3 - vertical win
    elsif @@board_map[5][2] == "🔴" && @@board_map[4][2] == "🔴" && @@board_map[3][2] == "🔴" && @@board_map[2][2] == "🔴"
      return true
    elsif @@board_map[4][2] == "🔴" && @@board_map[3][2] == "🔴" && @@board_map[2][2] == "🔴" && @@board_map[1][2] == "🔴"
      return true
    elsif @@board_map[3][2] == "🔴" && @@board_map[2][2] == "🔴" && @@board_map[1][2] == "🔴" && @@board_map[0][2] == "🔴"
      return true
    # column 4 - vertical win
    elsif @@board_map[5][3] == "🔴" && @@board_map[4][3] == "🔴" && @@board_map[3][3] == "🔴" && @@board_map[2][3] == "🔴"
      return true
    elsif @@board_map[4][3] == "🔴" && @@board_map[3][3] == "🔴" && @@board_map[2][3] == "🔴" && @@board_map[1][3] == "🔴"
      return true
    elsif @@board_map[3][3] == "🔴" && @@board_map[2][3] == "🔴" && @@board_map[1][3] == "🔴" && @@board_map[0][3] == "🔴"
      return true
    # column 5 - vertical win
    elsif @@board_map[5][4] == "🔴" && @@board_map[4][4] == "🔴" && @@board_map[3][4] == "🔴" && @@board_map[2][4] == "🔴"
      return true
    elsif @@board_map[4][4] == "🔴" && @@board_map[3][4] == "🔴" && @@board_map[2][4] == "🔴" && @@board_map[1][4] == "🔴"
      return true
    elsif @@board_map[3][4] == "🔴" && @@board_map[2][4] == "🔴" && @@board_map[1][4] == "🔴" && @@board_map[0][4] == "🔴"
      return true
    # column 6 - vertical win
    elsif @@board_map[5][5] == "🔴" && @@board_map[4][5] == "🔴" && @@board_map[3][5] == "🔴" && @@board_map[2][5] == "🔴"
      return true
    elsif @@board_map[4][5] == "🔴" && @@board_map[3][5] == "🔴" && @@board_map[2][5] == "🔴" && @@board_map[1][5] == "🔴"
      return true
    elsif @@board_map[3][5] == "🔴" && @@board_map[2][5] == "🔴" && @@board_map[1][5] == "🔴" && @@board_map[0][5] == "🔴"
      return true
    # column 7 - vertical win
    elsif @@board_map[5][6] == "🔴" && @@board_map[4][6] == "🔴" && @@board_map[3][6] == "🔴" && @@board_map[2][6] == "🔴"
      return true
    elsif @@board_map[4][6] == "🔴" && @@board_map[3][6] == "🔴" && @@board_map[2][6] == "🔴" && @@board_map[1][6] == "🔴"
      return true
    elsif @@board_map[3][6] == "🔴" && @@board_map[2][6] == "🔴" && @@board_map[1][6] == "🔴" && @@board_map[0][6] == "🔴"
      return true
    # Diagonal win
    # row 6 (diagonal right)
    elsif @@board_map[5][0] == "🔴" && @@board_map[4][1] == "🔴" && @@board_map[3][2] == "🔴" && @@board_map[2][3] == "🔴"
      return true
    elsif @@board_map[5][1] == "🔴" && @@board_map[4][2] == "🔴" && @@board_map[3][3] == "🔴" && @@board_map[2][4] == "🔴"
      return true
    elsif @@board_map[5][2] == "🔴" && @@board_map[4][3] == "🔴" && @@board_map[3][4] == "🔴" && @@board_map[2][5] == "🔴"
      return true
    elsif @@board_map[5][3] == "🔴" && @@board_map[4][4] == "🔴" && @@board_map[3][5] == "🔴" && @@board_map[2][6] == "🔴"
    # row 5 (diagonal right)
    elsif @@board_map[4][0] == "🔴" && @@board_map[3][1] == "🔴" && @@board_map[2][2] == "🔴" && @@board_map[1][3] == "🔴"
      return true
    elsif @@board_map[4][1] == "🔴" && @@board_map[3][2] == "🔴" && @@board_map[2][3] == "🔴" && @@board_map[1][4] == "🔴"
      return true
    elsif @@board_map[4][2] == "🔴" && @@board_map[3][3] == "🔴" && @@board_map[2][4] == "🔴" && @@board_map[1][5] == "🔴"
      return true
    elsif @@board_map[4][3] == "🔴" && @@board_map[3][4] == "🔴" && @@board_map[2][5] == "🔴" && @@board_map[1][6] == "🔴"
    # row 4 (diagonal right)
    elsif @@board_map[3][0] == "🔴" && @@board_map[2][1] == "🔴" && @@board_map[1][2] == "🔴" && @@board_map[0][3] == "🔴"
      return true
    elsif @@board_map[3][1] == "🔴" && @@board_map[2][2] == "🔴" && @@board_map[1][3] == "🔴" && @@board_map[0][4] == "🔴"
      return true
    elsif @@board_map[3][2] == "🔴" && @@board_map[2][3] == "🔴" && @@board_map[1][4] == "🔴" && @@board_map[0][5] == "🔴"
      return true
    elsif @@board_map[3][3] == "🔴" && @@board_map[2][4] == "🔴" && @@board_map[1][5] == "🔴" && @@board_map[0][6] == "🔴"
      return true
    # row 6 (diagonal left)
    elsif @@board_map[5][6] == "🔴" && @@board_map[4][5] == "🔴" && @@board_map[3][4] == "🔴" && @@board_map[2][3] == "🔴"
      return true
    elsif @@board_map[5][5] == "🔴" && @@board_map[4][4] == "🔴" && @@board_map[3][3] == "🔴" && @@board_map[2][2] == "🔴"
      return true
    elsif @@board_map[5][4] == "🔴" && @@board_map[4][3] == "🔴" && @@board_map[3][2] == "🔴" && @@board_map[2][1] == "🔴"
      return true
    elsif @@board_map[5][3] == "🔴" && @@board_map[4][2] == "🔴" && @@board_map[3][1] == "🔴" && @@board_map[2][0] == "🔴"
      return true
    # row 5 (diagonal left)
    elsif @@board_map[4][6] == "🔴" && @@board_map[3][5] == "🔴" && @@board_map[2][4] == "🔴" && @@board_map[1][3] == "🔴"
      return true
    elsif @@board_map[4][5] == "🔴" && @@board_map[3][4] == "🔴" && @@board_map[2][3] == "🔴" && @@board_map[1][2] == "🔴"
      return true
    elsif @@board_map[4][4] == "🔴" && @@board_map[3][3] == "🔴" && @@board_map[2][2] == "🔴" && @@board_map[1][1] == "🔴"
      return true
    elsif @@board_map[4][3] == "🔴" && @@board_map[3][2] == "🔴" && @@board_map[2][1] == "🔴" && @@board_map[1][0] == "🔴"
      return true
    # row 4 (diagonal left)
    elsif @@board_map[3][6] == "🔴" && @@board_map[2][5] == "🔴" && @@board_map[1][4] == "🔴" && @@board_map[0][3] == "🔴"
      return true
    elsif @@board_map[3][5] == "🔴" && @@board_map[2][4] == "🔴" && @@board_map[1][3] == "🔴" && @@board_map[0][2] == "🔴"
      return true
    elsif @@board_map[3][4] == "🔴" && @@board_map[2][3] == "🔴" && @@board_map[1][2] == "🔴" && @@board_map[0][1] == "🔴"
      return true
    elsif @@board_map[3][3] == "🔴" && @@board_map[2][2] == "🔴" && @@board_map[1][1] == "🔴" && @@board_map[0][0] == "🔴"
      return true
    elsif @@board_map[5][0] == "🔴" && @@board_map[5][1] == "🔴" && @@board_map[5][2] == "🔴" && @@board_map[5][3] == "🔴"
      return true
    elsif @@board_map[5][1] == "🔴" && @@board_map[5][2] == "🔴" && @@board_map[5][3] == "🔴" && @@board_map[5][4] == "🔴"
      return true
    elsif @@board_map[5][2] == "🔴" && @@board_map[5][3] == "🔴" && @@board_map[5][4] == "🔴" && @@board_map[5][5] == "🔴"
      return true
    elsif @@board_map[5][3] == "🔴" && @@board_map[5][4] == "🔴" && @@board_map[5][5] == "🔴" && @@board_map[5][6] == "🔴"
      return true
    # Blue wins
    # row 5 - horizontal win
    elsif @@board_map[4][0] == "🔵" && @@board_map[4][1] == "🔵" && @@board_map[4][2] == "🔵" && @@board_map[4][3] == "🔵"
        return true
    elsif @@board_map[4][1] == "🔵" && @@board_map[4][2] == "🔵" && @@board_map[4][3] == "🔵" && @@board_map[4][4] == "🔵"
      return true
    elsif @@board_map[4][2] == "🔵" && @@board_map[4][3] == "🔵" && @@board_map[4][4] == "🔵" && @@board_map[4][5] == "🔵"
      return true
    elsif @@board_map[4][3] == "🔵" && @@board_map[4][4] == "🔵" && @@board_map[4][5] == "🔵" && @@board_map[4][6] == "🔵"
      return true
    #row 4 - horizontal win
    elsif @@board_map[3][0] == "🔵" && @@board_map[3][1] == "🔵" && @@board_map[3][2] == "🔵" && @@board_map[3][3] == "🔵"
      return true
    elsif @@board_map[3][1] == "🔵" && @@board_map[3][2] == "🔵" && @@board_map[3][3] == "🔵" && @@board_map[3][4] == "🔵"
      return true
    elsif @@board_map[3][2] == "🔵" && @@board_map[3][3] == "🔵" && @@board_map[3][4] == "🔵" && @@board_map[3][5] == "🔵"
      return true
    elsif @@board_map[3][3] == "🔵" && @@board_map[3][4] == "🔵" && @@board_map[3][5] == "🔵" && @@board_map[3][6] == "🔵"
      return true
    #row 3 - horizontal win
    elsif @@board_map[2][0] == "🔵" && @@board_map[2][1] == "🔵" && @@board_map[2][2] == "🔵" && @@board_map[2][3] == "🔵"
      return true
    elsif @@board_map[2][1] == "🔵" && @@board_map[2][2] == "🔵" && @@board_map[2][3] == "🔵" && @@board_map[2][4] == "🔵"
      return true
    elsif @@board_map[2][2] == "🔵" && @@board_map[2][3] == "🔵" && @@board_map[2][4] == "🔵" && @@board_map[2][5] == "🔵"
      return true
    elsif @@board_map[2][3] == "🔵" && @@board_map[2][4] == "🔵" && @@board_map[2][5] == "🔵" && @@board_map[2][6] == "🔵"
      return true
    #row 2 - horizontal win
    elsif @@board_map[1][0] == "🔵" && @@board_map[1][1] == "🔵" && @@board_map[1][2] == "🔵" && @@board_map[1][3] == "🔵"
      return true
    elsif @@board_map[1][1] == "🔵" && @@board_map[1][2] == "🔵" && @@board_map[1][3] == "🔵" && @@board_map[1][4] == "🔵"
      return true
    elsif @@board_map[1][2] == "🔵" && @@board_map[1][3] == "🔵" && @@board_map[1][4] == "🔵" && @@board_map[1][5] == "🔵"
      return true
    elsif @@board_map[1][3] == "🔵" && @@board_map[1][4] == "🔵" && @@board_map[1][5] == "🔵" && @@board_map[1][6] == "🔵"
      return true
    #row 1 - horizontal win
    elsif @@board_map[0][0] == "🔵" && @@board_map[0][1] == "🔵" && @@board_map[0][2] == "🔵"&& @@board_map[0][3] == "🔵"
      return true
    elsif @@board_map[0][1] == "🔵" && @@board_map[0][2] == "🔵" && @@board_map[0][3] == "🔵"&& @@board_map[0][4] == "🔵"
      return true
    elsif @@board_map[0][2] == "🔵" && @@board_map[0][3] == "🔵" && @@board_map[0][4] == "🔵"&& @@board_map[0][5] == "🔵"
      return true
    elsif @@board_map[0][3] == "🔵" && @@board_map[0][4] == "🔵" && @@board_map[0][5] == "🔵"&& @@board_map[0][6] == "🔵"
      return true
    #vertical win
    # column 1 - vertical win
    elsif @@board_map[5][0] == "🔵" && @@board_map[4][0] == "🔵" && @@board_map[3][0] == "🔵" && @@board_map[2][0] == "🔵"
      return true
    elsif @@board_map[4][0] == "🔵" && @@board_map[3][0] == "🔵" && @@board_map[2][0] == "🔵" && @@board_map[1][0] == "🔵"
      return true
    elsif @@board_map[3][0] == "🔵" && @@board_map[2][0] == "🔵" && @@board_map[1][0] == "🔵" && @@board_map[0][0] == "🔵"
      return true
    # column 2 - vertical win
    elsif @@board_map[5][1] == "🔵" && @@board_map[4][1] == "🔵" && @@board_map[3][1] == "🔵" && @@board_map[2][1] == "🔵"
      return true
    elsif @@board_map[4][1] == "🔵" && @@board_map[3][1] == "🔵" && @@board_map[2][1] == "🔵" && @@board_map[1][1] == "🔵"
      return true
    elsif @@board_map[3][1] == "🔵" && @@board_map[2][1] == "🔵" && @@board_map[1][1] == "🔵" && @@board_map[0][1] == "🔵"
      return true
    # column 3 - vertical win
    elsif @@board_map[5][2] == "🔵" && @@board_map[4][2] == "🔵" && @@board_map[3][2] == "🔵" && @@board_map[2][2] == "🔵"
      return true
    elsif @@board_map[4][2] == "🔵" && @@board_map[3][2] == "🔵" && @@board_map[2][2] == "🔵" && @@board_map[1][2] == "🔵"
      return true
    elsif @@board_map[3][2] == "🔵" && @@board_map[2][2] == "🔵" && @@board_map[1][2] == "🔵" && @@board_map[0][2] == "🔵"
      return true
    # column 4 - vertical win
    elsif @@board_map[5][3] == "🔵" && @@board_map[4][3] == "🔵" && @@board_map[3][3] == "🔵" && @@board_map[2][3] == "🔵"
      return true
    elsif @@board_map[4][3] == "🔵" && @@board_map[3][3] == "🔵" && @@board_map[2][3] == "🔵" && @@board_map[1][3] == "🔵"
      return true
    elsif @@board_map[3][3] == "🔵" && @@board_map[2][3] == "🔵" && @@board_map[1][3] == "🔵" && @@board_map[0][3] == "🔵"
      return true
    # column 5 - vertical win
    elsif @@board_map[5][4] == "🔵" && @@board_map[4][4] == "🔵" && @@board_map[3][4] == "🔵" && @@board_map[2][4] == "🔵"
      return true
    elsif @@board_map[4][4] == "🔵" && @@board_map[3][4] == "🔵" && @@board_map[2][4] == "🔵" && @@board_map[1][4] == "🔵"
      return true
    elsif @@board_map[3][4] == "🔵" && @@board_map[2][4] == "🔵" && @@board_map[1][4] == "🔵" && @@board_map[0][4] == "🔵"
      return true
    # column 6 - vertical win
    elsif @@board_map[5][5] == "🔵" && @@board_map[4][5] == "🔵" && @@board_map[3][5] == "🔵" && @@board_map[2][5] == "🔵"
      return true
    elsif @@board_map[4][5] == "🔵" && @@board_map[3][5] == "🔵" && @@board_map[2][5] == "🔵" && @@board_map[1][5] == "🔵"
      return true
    elsif @@board_map[3][5] == "🔵" && @@board_map[2][5] == "🔵" && @@board_map[1][5] == "🔵" && @@board_map[0][5] == "🔵"
      return true
    # column 7 - vertical win
    elsif @@board_map[5][6] == "🔵" && @@board_map[4][6] == "🔵" && @@board_map[3][6] == "🔵" && @@board_map[2][6] == "🔵"
      return true
    elsif @@board_map[4][6] == "🔵" && @@board_map[3][6] == "🔵" && @@board_map[2][6] == "🔵" && @@board_map[1][6] == "🔵"
      return true
    elsif @@board_map[3][6] == "🔵" && @@board_map[2][6] == "🔵" && @@board_map[1][6] == "🔵" && @@board_map[0][6] == "🔵"
      return true
    # Diagonal win
    # row 6 (diagonal right)
    elsif @@board_map[5][0] == "🔵" && @@board_map[4][1] == "🔵" && @@board_map[3][2] == "🔵" && @@board_map[2][3] == "🔵"
      return true
    elsif @@board_map[5][1] == "🔵" && @@board_map[4][2] == "🔵" && @@board_map[3][3] == "🔵" && @@board_map[2][4] == "🔵"
      return true
    elsif @@board_map[5][2] == "🔵" && @@board_map[4][3] == "🔵" && @@board_map[3][4] == "🔵" && @@board_map[2][5] == "🔵"
      return true
    elsif @@board_map[5][3] == "🔵" && @@board_map[4][4] == "🔵" && @@board_map[3][5] == "🔵" && @@board_map[2][6] == "🔵"
    # row 5 (diagonal right)
    elsif @@board_map[4][0] == "🔵" && @@board_map[3][1] == "🔵" && @@board_map[2][2] == "🔵" && @@board_map[1][3] == "🔵"
      return true
    elsif @@board_map[4][1] == "🔵" && @@board_map[3][2] == "🔵" && @@board_map[2][3] == "🔵" && @@board_map[1][4] == "🔵"
      return true
    elsif @@board_map[4][2] == "🔵" && @@board_map[3][3] == "🔵" && @@board_map[2][4] == "🔵" && @@board_map[1][5] == "🔵"
      return true
    elsif @@board_map[4][3] == "🔵" && @@board_map[3][4] == "🔵" && @@board_map[2][5] == "🔵" && @@board_map[1][6] == "🔵"
    # row 4 (diagonal right)
    elsif @@board_map[3][0] == "🔵" && @@board_map[2][1] == "🔵" && @@board_map[1][2] == "🔵" && @@board_map[0][3] == "🔵"
      return true
    elsif @@board_map[3][1] == "🔵" && @@board_map[2][2] == "🔵" && @@board_map[1][3] == "🔵" && @@board_map[0][4] == "🔵"
      return true
    elsif @@board_map[3][2] == "🔵" && @@board_map[2][3] == "🔵" && @@board_map[1][4] == "🔵" && @@board_map[0][5] == "🔵"
      return true
    elsif @@board_map[3][3] == "🔵" && @@board_map[2][4] == "🔵" && @@board_map[1][5] == "🔵" && @@board_map[0][6] == "🔵"
      return true
    # row 6 (diagonal left)
    elsif @@board_map[5][6] == "🔵" && @@board_map[4][5] == "🔵" && @@board_map[3][4] == "🔵" && @@board_map[2][3] == "🔵"
      return true
    elsif @@board_map[5][5] == "🔵" && @@board_map[4][4] == "🔵" && @@board_map[3][3] == "🔵" && @@board_map[2][2] == "🔵"
      return true
    elsif @@board_map[5][4] == "🔵" && @@board_map[4][3] == "🔵" && @@board_map[3][2] == "🔵" && @@board_map[2][1] == "🔵"
      return true
    elsif @@board_map[5][3] == "🔵" && @@board_map[4][2] == "🔵" && @@board_map[3][1] == "🔵" && @@board_map[2][0] == "🔵"
      return true
    # row 5 (diagonal left)
    elsif @@board_map[4][6] == "🔵" && @@board_map[3][5] == "🔵" && @@board_map[2][4] == "🔵" && @@board_map[1][3] == "🔵"
      return true
    elsif @@board_map[4][5] == "🔵" && @@board_map[3][4] == "🔵" && @@board_map[2][3] == "🔵" && @@board_map[1][2] == "🔵"
      return true
    elsif @@board_map[4][4] == "🔵" && @@board_map[3][3] == "🔵" && @@board_map[2][2] == "🔵" && @@board_map[1][1] == "🔵"
      return true
    elsif @@board_map[4][3] == "🔵" && @@board_map[3][2] == "🔵" && @@board_map[2][1] == "🔵" && @@board_map[1][0] == "🔵"
      return true
    # row 4 (diagonal left)
    elsif @@board_map[3][6] == "🔵" && @@board_map[2][5] == "🔵" && @@board_map[1][4] == "🔵" && @@board_map[0][3] == "🔵"
      return true
    elsif @@board_map[3][5] == "🔵" && @@board_map[2][4] == "🔵" && @@board_map[1][3] == "🔵" && @@board_map[0][2] == "🔵"
      return true
    elsif @@board_map[3][4] == "🔵" && @@board_map[2][3] == "🔵" && @@board_map[1][2] == "🔵" && @@board_map[0][1] == "🔵"
      return true
    elsif @@board_map[3][3] == "🔵" && @@board_map[2][2] == "🔵" && @@board_map[1][1] == "🔵" && @@board_map[0][0] == "🔵"
      return true
    end
  end

  game = Connect_four.new.play
end