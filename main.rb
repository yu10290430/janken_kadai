    def game
    def janken
    puts "0(グー) 1(チョキ) 2(パー) 3(戦わない)"
    player_hand = gets.to_i

    program_hand = rand(3)

    jankens = ["グー", "チョキ", "パー"]
    puts "ホイ！"
    puts "-----------------------------------------------"
    puts "あなた:#{jankens[player_hand]}を出しました"
    puts "わたし:#{jankens[program_hand]}を出しました"
    puts "-----------------------------------------------"

    if player_hand == program_hand
      puts "あいこで"
      return true
    elsif (player_hand == 0 && program_hand == 1) || (player_hand == 1 && program_hand == 2) || (player_hand == 2 && program_hand == 0)
      @result = "win"
      return false
    elsif (player_hand == 0 && program_hand == 2) || (player_hand == 1 && program_hand == 0) || (player_hand == 2 && program_hand == 1)
      @result = "lose"
      return false
    elsif player_hand == 3
      puts "戦わないようなのでゲームを終了します"
      return false
    else
      puts "入力された値が間違っています。もう一度やり直してください"
      return true
    end
  end
  
  next_game = true

  puts "じゃんけん..."

  while next_game do
    next_game = janken
  end
  
  
   if @result == "win"
  puts "あっち向いて〜"
 puts "0(上) 1(下) 2(左) 3(右)"
    player = gets.to_i
    
    program = rand(4)
    
    sub_games = ["上","下","左","右"]
    puts "ホイ！"
    puts "-----------------------------------------------"
    puts "あなた:#{sub_games[player]}"
    puts "わたし:#{sub_games[program]}"
    puts "-----------------------------------------------"
    
    if player == program
    puts "あなたの勝ちです"
    return false
  else
    return true
  end
end


 if @result == "lose"
puts "あっち向いて〜"
 puts "0(上) 1(下) 2(左) 3(右)"
    player = gets.to_i
    
    program = rand(4)
    
    sub_games = ["上","下","左","右"]
    puts "ホイ！"
    puts "-----------------------------------------------"
    puts "あなた:#{sub_games[player]}"
    puts "わたし:#{sub_games[program]}"
    puts "-----------------------------------------------"
    
    if player == program
    puts "あなたの負けです"
    return false
  else
    return true
  end
end
end

next_game = true

while next_game do
    next_game = game
 end
  
 
   
  
  
  