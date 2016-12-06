current = {x: 0, y:0}
heading = 0

input = File.read('input.txt')

input.split(', ').each do |instruction|
  _, direction, steps = instruction.partition(/\w/)
  steps = steps.to_i

  if direction == 'R'
    heading += 1
  else
    heading -= 1
  end

  heading %= 4

  case heading
  when 0 # N
    current[:y] += steps
  when 1 # E
    current[:x] += steps
  when 2 # S
    current[:y] -= steps
  when 3 # W
    current[:x] -= steps
  end
end

puts "The Easter Bunny is #{current[:x].abs + current[:y].abs} blocks away"
