require ('rspec')
require ('num_to_word')

describe ('#num_to_word') do
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
    number = NumToWord.new(84)
    expect(number.to_word).to eq("eighty four")
  end
end
