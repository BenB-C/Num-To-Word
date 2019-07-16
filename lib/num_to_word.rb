class NumToWord
  def initialize(number)
    @number = number
  end

  def to_word()
    less_than_twenty_array = ["zero", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine", "ten", "eleven", "twelve", "thirteen", "fourteen", "fifteen", "sixteen", "seventeen", "eighteen", "nineteen"]
    tens_place_words = { 2 => "twenty", 3 => "thirty", 4 => "fourty", 5 => "fifty", 6 => "sixty", 7 => "seventy", 8 => "eighty", 9 => "ninety"}
    if (@number < 20)
      less_than_twenty_array[@number]
    else
      ones_place = @number % 10
      tens_place = @number / 10
      if ones_place === 0
        tens_place_words.fetch(tens_place)
      else
        tens_place_words.fetch(tens_place) + " " + less_than_twenty_array[ones_place]
    end
    end
  end
end
