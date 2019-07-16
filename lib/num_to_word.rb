require('pry')

class NumToWord
  def initialize(number)
    @number = number
  end

  def to_word_three_digits()
    less_than_twenty_array = ["zero", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine", "ten", "eleven", "twelve", "thirteen", "fourteen", "fifteen", "sixteen", "seventeen", "eighteen", "nineteen"]

    tens_place_words = { 2 => "twenty", 3 => "thirty", 4 => "fourty", 5 => "fifty", 6 => "sixty", 7 => "seventy", 8 => "eighty", 9 => "ninety"}

    if @number < 20
      less_than_twenty_array[@number]
    elsif (@number < 100)
      ones_place = @number % 10
      tens_place = @number / 10
      if ones_place === 0
        tens_place_words.fetch(tens_place)
      else
        tens_place_words.fetch(tens_place) + " " + less_than_twenty_array[ones_place]
      end
    elsif (@number < 1000)
      hundreds_place = @number / 100
      rest_of_number = @number % 100
      if rest_of_number === 0
        less_than_twenty_array[hundreds_place] + " hundred"
      else
        number = NumToWord.new(rest_of_number)
        less_than_twenty_array[hundreds_place] + " hundred " + number.to_word
      end
    # elsif (@number < 1000000)
    #   thousands_part = @number / 1000
    #   rest_of_number = @number % 1000
    #   big_number = NumToWord.new(thousands_part)
    #   small_number = NumToWord.new(rest_of_number)
    #   big_number.to_word + " thousand " + small_number.to_word
    end
  end

  def to_word
    if @number === 0
      "zero"
    elsif @number > 10**(12 * 3)
      "I'm not sure but that's at least a bajillion"
    else
      comma_names = ["", "thousand", "million", "billion", "trillion", "quadrillion", "quintillion", "sextillion", "septillion", "octillian", "nonilian"]
      number_part = @number
      word = ""
      comma_count = 0
      while number_part > 0 do
        rightmost_three_digits = number_part % 1000
        if comma_count === 0
          word = NumToWord.new(rightmost_three_digits).to_word_three_digits
        else
          word = NumToWord.new(rightmost_three_digits).to_word_three_digits + " " + comma_names[comma_count] + " " + word
        end
        comma_count = comma_count + 1
        number_part = number_part / 1000
      end
      word
    end
  end
end
