require 'pry'


p 'Enter deepth:'
deepth = 3 #gets.chomp
p 'Basic number is:'
basic = 1 #gets.chomp

rows = []
deepth.times do |row|
  row = []
  rows << row
end

rows[0][0] = [basic]

rows[1..deepth].each_with_index do|item, i| 
  (i+2).times {item << []}
  item.first << basic
  item.last << basic

end
p rows