equation_regex = %r{mul\(\d{1,3},\d{1,3}\)}
operand_regex = %r{(\d+),(\d+)}

result = File.readlines('input.txt').map(&:strip).sum do |line|
  line.scan(equation_regex).sum do |eq|
    eq.match(operand_regex).captures.map(&:to_i).reduce(:*)
  end
end

puts result
