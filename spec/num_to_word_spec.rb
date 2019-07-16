require ('rspec')
require ('num_to_word')

describe ('#num_to_word') do
  it("returns the word for a single digit") do
    number = NumToWord.new(0)
    expect(number.to_word).to(eq("zero"))
  end

  it("returns the word for a single digit") do
    number = NumToWord.new(5)
    expect(number.to_word).to(eq("five"))
  end

  it("returns the word for a single digit") do
    number = NumToWord.new(9)
    expect(number.to_word).to(eq("nine"))
  end

  it("returns the word for a double digit number less than twenty") do
    number = NumToWord.new(11)
    expect(number.to_word).to eq("eleven")
  end

  it("returns the word for a double digit number less than twenty") do
    number = NumToWord.new(12)
    expect(number.to_word).to eq("twelve")
  end

  it("returns the word for a double digit number less than twenty") do
    number = NumToWord.new(13)
    expect(number.to_word).to eq("thirteen")
  end

  it("returns the word for a double digit number less than twenty") do
    number = NumToWord.new(14)
    expect(number.to_word).to eq("fourteen")
  end

  it("returns the word for a double digit number less than twenty") do
    number = NumToWord.new(15)
    expect(number.to_word).to eq("fifteen")
  end

  it("returns the word for a double digit number less than twenty") do
    number = NumToWord.new(16)
    expect(number.to_word).to eq("sixteen")
  end

  it("returns the word for a double digit number less than twenty") do
    number = NumToWord.new(19)
    expect(number.to_word).to eq("nineteen")
  end

  it("returns the word for a double digit number greater than or equal to twenty") do
    number = NumToWord.new(20)
    expect(number.to_word).to eq("twenty")
  end

  it("returns the word for a double digit number greater than or equal to twenty") do
    number = NumToWord.new(40)
    expect(number.to_word).to eq("fourty")
  end

  it("returns the word for a double digit number greater than or equal to twenty") do
    number = NumToWord.new(57)
    expect(number.to_word).to eq("fifty seven")
  end

  it("returns the word for a double digit number greater than or equal to twenty") do
    number = NumToWord.new(99)
    expect(number.to_word).to eq("ninety nine")
  end

  it("returns the word for a triple digit number") do
    number = NumToWord.new(100)
    expect(number.to_word).to(eq("one hundred"))
  end

  it("returns the word for a triple digit number") do
    number = NumToWord.new(109)
    expect(number.to_word).to(eq("one hundred nine"))
  end

  it("returns the word for a triple digit number") do
    number = NumToWord.new(521)
    expect(number.to_word).to(eq("five hundred twenty one"))
  end

  it("returns the word for a triple digit number") do
    number = NumToWord.new(780)
    expect(number.to_word).to(eq("seven hundred eighty"))
  end

  it("returns the word for a triple digit number") do
    number = NumToWord.new(786)
    expect(number.to_word).to(eq("seven hundred eighty six"))
  end

  it("returns the word for a triple digit number") do
    number = NumToWord.new(999)
    expect(number.to_word).to(eq("nine hundred ninety nine"))
  end

  it("returns the word for a number up to 999,999") do
    number = NumToWord.new(123456)
    expect(number.to_word).to(eq("one hundred twenty three thousand four hundred fifty six"))
  end

  it("returns the word for a number in the billions") do
    number = NumToWord.new(555123456789)
    expect(number.to_word).to(eq("five hundred fifty five billion one hundred twenty three million four hundred fifty six thousand seven hundred eighty nine"))
  end
end
