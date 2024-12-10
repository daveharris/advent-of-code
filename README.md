# [Advent of Code](http://adventofcode.com)

Advent of Code is a series of small programming puzzles for a variety of skill levels. They are self-contained and are just as appropriate for an expert who wants to stay sharp as they are for a beginner who is just learning to code. Each puzzle calls upon different skills and has two parts that build on a theme.

This repository is my solutions, organised in <year>/<day> folders

To start a new day, run:
```bash
mkdir -p `date '+%Y/%-d'` && cd `date '+%Y/%-d'` && touch {a.rb,b.rb,input.txt,example.txt}
```
or:
```bash
read DAY\?"Day: " && cp -r . ../$DAY && cd ../$DAY && truncate -s 0 * && echo "require 'debug'\n\nlines = File.readlines('example.txt').map(&:strip)\n" > *.rb
```
