input = File.open('input.txt')
sector_id_sum = 0

def real?(name, checksum)
  occourances = Hash.new(0)
  name.gsub('-', '').chars.each do |char|
    occourances[char] += 1
  end

  # Sort by value descending, then key ascending
  occourances = occourances.sort{|a,b| [b.last,a.first] <=> [a.last,b.first]}

  top_5 = occourances.map(&:first).take(5)

  checksum == top_5.join
end

input.each_line do |line|
  name, sector_id, checksum = line.match(/(.*)-(\d+)\[(.*)\]/).captures
  sector_id = sector_id.to_i

  if real?(name, checksum)
    sector_id_sum += sector_id
  end
end

puts "Sum of sector IDs of real rooms: #{sector_id_sum}"
