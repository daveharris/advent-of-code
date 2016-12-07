#     1
#   2 3 4
# 5 6 7 8 9
#   A B C
#     D

KEYS = {
  {x:2, y:0} => 1,
  {x:1, y:1} => 2,
  {x:2, y:1} => 3,
  {x:3, y:1} => 4,
  {x:0, y:2} => 5,
  {x:1, y:2} => 6,
  {x:2, y:2} => 7,
  {x:3, y:2} => 8,
  {x:4, y:2} => 9,
  {x:1, y:3} => :A,
  {x:2, y:3} => :B,
  {x:3, y:3} => :C,
  {x:2, y:4} => :D
}

current = KEYS.invert[5]
code = []

input = File.open('input.txt')

input.each_line do |line|
  line.chars.each do |instruction|
    case instruction
    when 'U'
      current[:y] -= 1 if KEYS.include?({x: current[:x], y: current[:y] - 1})
    when 'D'
      current[:y] += 1 if KEYS.include?({x: current[:x], y: current[:y] + 1})
    when 'R'
      current[:x] += 1 if KEYS.include?({x: current[:x] + 1, y: current[:y]})
    when 'L'
      current[:x] -= 1 if KEYS.include?({x: current[:x] - 1, y: current[:y]})
    end
  end

  code << KEYS[current]
end

puts "The bathroom code is: #{code.join}"
