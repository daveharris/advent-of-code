lines = File.readlines('input.txt').map(&:strip)
sum = 0

mapping = {
  'one'   => 'o1e',
  'two'   => 't2o',
  'three' => 't3e',
  'four'  => 'f4r',
  'five'  => 'f5e',
  'six'   => 's6x' ,
  'seven' => 's7n',
  'eight' => 'e8t',
  'nine'  => 'n9e',
}

lines.each do |line|
  mapping.each do |k,v|
    line.gsub!(k, v)
  end
  # puts "Numbers: #{line}"

  digits = line.scan(/(\d)/).flatten.map(&:to_i)

  sum += digits.first*10 + digits.last
  #puts "Result: #{digits.first*10 + digits.last}\n\n"
end

puts sum
# 53595 too low

