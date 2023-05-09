aim = position = depth = 0

File.readlines('example.txt').each do |line|
  command, frequency = line.split(' ')
  frequency = frequency.to_i

  case command
  when 'forward'
    position += frequency
    depth += (aim * frequency)
  when 'down'
    aim += frequency
  when 'up'
    aim -= frequency
  end

end

puts "Result: #{position * depth}, position: #{position}, depth: #{depth}"
