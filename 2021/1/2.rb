lines = File.readlines('input.txt').map(&:strip)

lines.map!(&:to_i)
increase_count = 0

lines.each_cons(4).each do |con|
  increase_count +=1 if con[1..3].sum > con[0..2].sum
end

puts increase_count
