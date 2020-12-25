

#スロットゲーム

 current_point = 0
 current_coin = 100

loop do

 puts "--------------------------------------------"
 puts "残りコイン数#{current_coin}"
 puts "ポイント数#{current_point}"
 puts "何コインいれますか？"
 puts "0(10コイン)　1(30コイン)　2(50コイン) 3(やらない)"

 puts "--------------------------------------------"



#入れるコインの枚数
 player = gets.to_i
 bets = [10,30,50,]


 if player == 0
  puts "あなたの持ちコインは#{current_coin-bets[player]}です"
 elsif player == 1
  puts "あなたの持ちコインは#{current_coin-bets[player]}です"
 elsif player == 2
  puts "あなたの持ちコインは#{current_coin-bets[player]}です"
 elsif player == 3
  puts "あなたの持ちコインは#{current_coin}です"
  puts "ゲームを終了します"
  return false
 else
  puts "※BETする枚数を選択してください"
  return false
 end

 current_coin = current_coin-bets[player]

 puts "エンターキーを３回押してください"


 puts "--------------------------------------------"

 player = gets
 slot1 = rand(8)+1
 slots = [1,2,3,4,5,6,7,8,9]
 puts "#{slots[slot1]}|"
 slot2 = rand(8)+1
 puts "#{slots[slot2]}|"
 slot3 = rand(8)+1
 puts "#{slots[slot3]}|"

 puts "--------------------------------------------"

 player = gets
 slot4 = rand(8)+1
 puts "#{slots[slot1]}|#{slots[slot4]}|"
 slot5 = rand(8)+1
 puts "#{slots[slot2]}|#{slots[slot5]}|"
 slot6 = rand(8)+1
 puts "#{slots[slot3]}|#{slots[slot6]}|"

 puts "--------------------------------------------"
 player = gets
 slot7 = rand(8)+1
 puts "#{slots[slot1]}|#{slots[slot4]}|#{slots[slot7]}|"
 slot8 = rand(8)+1
 puts "#{slots[slot2]}|#{slots[slot5]}|#{slots[slot8]}|"
 slot9 = rand(8)+1
 puts "#{slots[slot3]}|#{slots[slot6]}|#{slots[slot9]}|"

 puts "--------------------------------------------"

 #当たった場合、ハズレた場合
 if (slots[slot2] == 7 and slots[slot5] == 7 and slots[slot8] == 7)
   puts "中断のラインに7が揃いました"
   puts "500ポイント獲得"
   puts "100コイン獲得"
   puts "あなたの持ちポイントは#{current_point+500}です"
   puts "あなたの持ちコインは#{current_coin+100}です"
   current_point = current_point+500
   current_coin = current_coin+100
 elsif (slots[slot2] == slots[slot5] && slots[slot5] == slots[slot8])
   puts "中断のラインに数字が揃いました"
   puts "100ポイント獲得"
   puts "50コイン獲得"
   puts "あなたの持ちポイントは#{current_point+100}です"
   puts "あなたの持ちコインは#{current_coin+50}です"
   current_point = current_point+100
   current_coin = current_coin+50
 else
   puts "残念ハズレです"
   puts "あなたの持ちコインは#{current_coin}です"
 end

 puts "1(再BETする) 2(終了する)"
 select_number = gets.to_i

 if (current_coin >= 10 && select_number == 1)

 elsif (current_coin < 10 && select_number == 1)
   puts "--------------------------------------------"
   puts "持ちコインがありません"
   puts "ゲームを終了します"
   return false
 else

   puts "終了しました"
   return false
 end
end
