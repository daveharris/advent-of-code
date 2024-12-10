safe_count = File.readlines('input.txt')
  .map(&:strip)
  .map { |l| l.split(' ').map(&:to_i) }
  .count do |nums|
    gaps = nums.each_cons(2).map {|a, b| a - b }
    (gaps.all?{|g| g < 0} || gaps.all?{|g| g > 0}) && gaps.all?{|g| [1,2,3].include?(g.abs) }
  end

puts safe_count
