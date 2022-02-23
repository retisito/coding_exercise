require_relative 'word_counter'

input = ARGV.join(" ")

begin
  input = eval(input) if input.include?"["
rescue SyntaxError
  puts "The input value is not valid" 
  exit(0)
end

puts WordCounter.counter(input).to_s