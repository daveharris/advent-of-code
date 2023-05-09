input = File.read('input.txt')

sums = input
  .split("\n\n").map do |amounts|
    amounts.split("\n").map(&:to_i).sum
  end

puts sums.max
