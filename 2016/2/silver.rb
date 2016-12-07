#  1(0,0)  2(1,0)  3(2,0)
#  4(0,1)  5(1,1)  6(2,1)
#  7(0,2)  8(1,2)  9(2,2)

KEYS = {
  {x:0, y:0} => 1,
  {x:1, y:0} => 2,
  {x:2, y:0} => 3,
  {x:0, y:1} => 4,
  {x:1, y:1} => 5,
  {x:2, y:1} => 6,
  {x:0, y:2} => 7,
  {x:1, y:2} => 8,
  {x:2, y:2} => 9
}

current = KEYS.invert[5]
code = []

input = File.open('input.txt')

input.each_line do |line|
  line.chars.each do |instruction|
    case instruction
    when 'U'
      current[:y] -= 1 if current[:y] > 0
    when 'D'
      current[:y] += 1  if current[:y] < 2
    when 'R'
      current[:x] += 1 if current[:x] < 2
    when 'L'
      current[:x] -= 1 if current[:x] > 0
    end
  end

  code << KEYS[current]
end

puts "The bathroom code is: #{code.join}"
