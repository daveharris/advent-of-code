lines = File.readlines('input.txt').map(&:strip)

TRANSLATE = {
  'A' => 'R', # Opponent Rock
  'X' => 'R', # My Rock
  'B' => 'P', # Opponent Paper
  'Y' => 'P', # My Paper
  'C' => 'S', # Opponent Scissors
  'Z' => 'S', # My Scissors
}

SHAPE_SCORES = {
  'R' => 1,
  'P' => 2,
  'S' => 3,
}

# Rock defeats Scissors, Scissors defeats Paper, and Paper defeats Rock
def win?(a, b)
  return nil if a == b

  (a == 'R' && b == 'S') ||
    (a == 'S' && b == 'P') ||
    (a == 'P' && b == 'R')
end

def round_score(a, b)
  case win?(a, b)
  when true
    return SHAPE_SCORES[a] + 6
  when false
    return SHAPE_SCORES[a] + 0
  when nil
    return SHAPE_SCORES[a] + 3
  end

end

my_total = 0

lines.each do |line|
  opponent, me = line.split(' ').map{|o| TRANSLATE[o] }

  my_total += round_score(me, opponent)
end

puts my_total
