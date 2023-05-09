input = File.open('input.txt')
rows = []
message = ''

input.each_line do |line|
  rows << (line.chars - ["\n"])
end

rows[0].size.times.with_index do |index|
  corrupted = rows.map{|r| r[index]}.join
  message << corrupted.chars.uniq.map{|c| [c, corrupted.count(c)]}.sort_by{|k,v| v}.last.first
end

puts "The error-corrected message is: #{message}"
