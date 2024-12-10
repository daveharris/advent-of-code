left, right = File.readlines('input.txt').map(&:strip)
  .map{|l| l.split('   ').map(&:to_i) }
  .transpose
  .map(&:sort)

puts distance = left.zip(right)
  .sum{|l,r| (l-r).abs}
