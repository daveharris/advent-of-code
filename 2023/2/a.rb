lines = File.readlines('input.txt').map(&:strip)
sum = 0

lines.each.with_index(1) do |game, num|
  possible = nil

  {'red': 12, 'green': 13, 'blue': 14}.each do |colour, max|
    break if possible == false

    counts = game.scan(%r{\d+ #{colour}}).map(&:to_i)
    possible = counts.all?{|c| c <= max }
  end

  sum += num if possible
end

puts sum
