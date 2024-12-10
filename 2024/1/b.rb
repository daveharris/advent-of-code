left, right = File.readlines('input.txt').map(&:strip)
  .map{|l| l.split('   ').map(&:to_i) }
  .transpose

similarity = left.sum do |l|
  l * right.count{|r| r == l }
end
puts similarity
