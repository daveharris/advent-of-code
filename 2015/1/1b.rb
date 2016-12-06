input = File.read('input.txt')
# input = '()())'

floor = 0
input.chars.each.with_index do |char, index|
  if char == '('
    floor +=1
  else
    floor -=1
  end

  if floor == -1
    puts "The first time Santa is in the basement is at position: #{index+1}"
    break
  end
end

