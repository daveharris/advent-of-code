def safe?(nums)
  gaps = nums.each_cons(2).map {|a, b| a - b }
  (gaps.all?{|g| g < 0} || gaps.all?{|g| g > 0}) && gaps.all?{|g| [1,2,3].include?(g.abs) }
end

safe_count = File.readlines('input.txt')
  .map(&:strip)
  .map { |l| l.split(' ').map(&:to_i) }
  .count do |nums|

    if safe?(nums)
      next true
    else
      dampened = nums.map.with_index do |n,i|
        reduced = nums.dup
        reduced.delete_at(i)
        safe?(reduced)
      end

      # Returns true if removing a single level from an unsafe report would make it safe
      next dampened.count(true) >= 1
    end

  end

puts safe_count
