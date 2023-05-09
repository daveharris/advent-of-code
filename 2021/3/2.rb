def filter_lines(lines, col_num, algorithm)
  return lines[0] if lines.size == 1

  col = lines.map{|l| l[col_num]}
  col_most_common = col.count('0') > col.count('1') ? '0' : '1'
  col_least_common = col_most_common == '1' ? '0' : '1'

  if algorithm == :most_common
    return filter_lines(lines.select{|l| l[col_num] == col_most_common}, col_num+1, algorithm)
  else
    return filter_lines(lines.select{|l| l[col_num] == col_least_common}, col_num+1, algorithm)
  end
end


file_lines = File.readlines('input.txt').map(&:strip)
oxygen_generator_rating = filter_lines(file_lines, 0, :most_common).to_i(2)
co2_scrubber_rating = filter_lines(file_lines, 0, :least_common).to_i(2)

puts "oxygen_generator_rating: #{oxygen_generator_rating}"
puts "co2_scrubber_rating: #{co2_scrubber_rating}"
puts "life support rating: #{oxygen_generator_rating * co2_scrubber_rating}"
