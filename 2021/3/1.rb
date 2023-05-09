lines = File.readlines('input.txt').map(&:strip)

data = []
(lines[0].length).times do |count|
  col = lines.map{|l| l[count]}
  col_most_common = col.count('0') > col.count('1') ? '0' : '1'
  col_least_common = col_most_common == '1' ? '0' : '1'

  data << { most: col_most_common, least: col_least_common }
end

gamma_rate = data.map{|d| d[:most]}.join('').to_i(2)
epsilon_rate = data.map{|d| d[:least]}.join('').to_i(2)

puts "Result: #{gamma_rate * epsilon_rate}"
