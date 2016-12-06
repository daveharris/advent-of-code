total = 0

File.readlines('input.txt').each do |line|
  l, w, h = line.split('x').map(&:to_i)

  areas = [l*w, w*h, h*l]
  areas_sum = 2 * areas.inject(:+)
  slack = areas.min

  total += (areas_sum + slack)
end

puts "The elves need: #{total} ft^2 of wrapping paper"