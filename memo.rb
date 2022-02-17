require "csv"

count = 3

count.times do

puts "1(新規でメモを作成)　2(既存のメモを編集する)"

memo_type = gets.to_s.chomp

if memo_type == "1"
puts "拡張子を除いたファイルを入力してください"

file_title = gets.chomp

puts"メモしたい内容を入力してください"
puts"入力を終えたらCTRL+Dを押してください"

memo_contents = readlines

CSV.open("#{file_title}.csv", "w") do |mc|
mc << memo_contents
end

elsif memo_type == "2"
puts "編集したいファイル名を入力してください"

editfile_title = gets.chomp

begin
CSV.foreach("#{editfile_title}.csv") do |mc|
puts mc
end

puts"------------------------------"
puts"付け加えたいメモを入力してください"
puts"入力を終えたらCTRL+Dを押してください"

addmemo = readlines

CSV.open("#{editfile_title}.csv", "a") do |mc|
mc << addmemo
end

rescue
puts"ファイルが見つかりませんでした"
end


else
puts"1か2で答えてください"
end

end

