position = depth = 0

File.readlines('input.txt').each do |line|
  command, frequency = line.split(' ')
  frequency = frequency.to_i

  case command
  when 'forward'
    position += frequency
  when 'down'
    depth += frequency
  when 'up'
    depth -= frequency
  end

end

puts "Result: #{position * depth}, position: #{position}, depth: #{depth}"
