lines = File.readlines('input.txt').map(&:strip)

lines.map!(&:to_i)
increase_count = 0

lines.each_cons(2).each do |a,b|
  increase_count +=1 if b > a
end

puts increase_count
