require 'set'

current = {x: 0, y:0}
heading = 0
visited = Set.new
visited_twice = nil

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

  steps.times do

    if visited.include?([current[:x], current[:y]])
      visited_twice = {x: current[:x], y: current[:y]}
      break
    end

    visited << [current[:x], current[:y]]

    case heading
    when 0 # N
      current[:y] += 1
    when 1 # E
      current[:x] += 1
    when 2 # S
      current[:y] -= 1
    when 3 # W
      current[:x] -= 1
    end
  end

  if visited_twice
    puts "The first location you visit twice is #{current[:x].abs + current[:y].abs} blocks away"
    break
  end

end

