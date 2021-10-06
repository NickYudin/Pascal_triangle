require 'pry'


p 'Enter deepth:'
deepth = 3 #gets.chomp
p 'Basic number is:'
basic = 1 #gets.chomp

@rows = []
deepth.times do |row|
  row = []
  @rows << row
end

@rows[0][0] = [basic]

def fill (row, pos)
  @rows[row][pos] =  @rows[row - 1][pos - 1] + @rows[row - 1][pos] 
end

@rows[1..deepth].each_with_index do|item, i| 
  (i+2).times {item << []}
  item.first << basic
  item.last << basic
  item.each_with_index do |num, index| 
    if num.empty?
      value = i + 1
      fill(value, index)
    end
  end
end
p @rows