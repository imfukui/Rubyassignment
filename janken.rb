def janken
puts "じゃんけん…"
puts "0(グー)1(チョキ)2(パー)3(戦わない)"

player_hand = gets.to_i
comp_hand = rand(3)

hands = ["グー", "チョキ","パー"]

puts"ぽん!"
puts"あなた:#{hands[player_hand]}"
puts"相手:#{hands[comp_hand]}"
puts"-------------------------------"

jk_result=""

if player_hand == comp_hand
jk_result="あいこ"

elsif player_hand == 3
jk_result="終了"

elsif player_hand == 0 && comp_hand == 1 || player_hand == 1 && comp_hand == 2 || player_hand == 2 && comp_hand == 0
jk_result="プレーヤー勝ち"

else
jk_result="プレーヤー負け"
end

def achimuite(result)
@result=result

puts "あっちむいて…"
puts"0(上)1(右)2(下)3(左)"

p_hoi = gets.to_i
c_hoi = rand(4)

hois = ["上", "右", "下", "左"]

puts"ホイ!"
puts"あなた:#{hois[p_hoi]}"
puts"相手:#{hois[c_hoi]}"
puts"---------------------------"

if p_hoi == c_hoi
puts"あなたの#{@result}です"

else
return true
end
end

case jk_result
when "プレーヤー勝ち"
achimuite("勝ち")

when "プレーヤー負け"
achimuite("負け")

when jk_result="あいこ"
return true

when jk_result="終了"
puts"終了します"
end

end

again_janken = true
while again_janken
again_janken = janken
end