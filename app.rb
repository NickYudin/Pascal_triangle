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

def fill

end

rows[1..deepth].each_with_index do|item, i| 
  (i+2).times {item << []}
  item.first << basic
  item.last << basic
  item.each do |num| 
    if num.empty?
      fill
    end
  end
end
p rows