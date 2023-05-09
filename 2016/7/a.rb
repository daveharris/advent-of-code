input = File.open('example.txt')
count = 0

def abba?(string)
  string.chars.map.with_index do |c,i|
    string[i] != string[i+1] && # different
    string[i] == string[i+3] && # start/end equal
    string[i+1] == string[i+2]  # middles equal
  end.any?
end

input.each_line do |line|
  abba_hypernet_sequences = line.scan(/\[\w\]/).flatten.map{|s| abba?(s)}.any?

  before, mid, after = line.split(/[\[\]]/)
  binding.pry

  if !abba?(mid) && (abba?(before) || abba?(after))
    # puts "#{line.chomp} supports TLS"
    count += 1
  end
end

puts "#{count} IP Addresses support TLS"
