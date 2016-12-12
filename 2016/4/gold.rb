input = File.open('input.txt')

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

def decrypt(name, sector_id)
  name.chars.map do |char|
    sector_id.times do
      if (char == '-')
        char = ' '
        break
      else
        char = char.succ[0]
      end
    end
    char
  end.join
end

input.each_line do |line|
  name, sector_id, checksum = line.match(/(.*)-(\d+)\[(.*)\]/).captures
  sector_id = sector_id.to_i

  if real?(name, checksum)
    real_name = decrypt(name, sector_id)
    puts "#{sector_id}: #{real_name}" if real_name.match(/northpole/)
  end
end
