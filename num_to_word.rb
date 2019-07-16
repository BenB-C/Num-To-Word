require('./lib/num_to_word')

while true do
  puts "Enter a number"
  input = gets.chomp
  if (input.upcase === "Q" )
    break
  end
  number = input.to_i()
  number = NumToWord.new(number)
  puts number.to_word
end
