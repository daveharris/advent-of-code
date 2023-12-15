lines = File.readlines('sample.txt').map(&:strip)
sum = 0

lines.each do |line|
  digits = line.scan(/(\d)/).flatten.map(&:to_i)
  sum += digits.first*10 + digits.last
end

puts sum
