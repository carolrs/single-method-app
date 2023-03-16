require 'reading_time'

RSpec.describe "reading_time method" do
  it "should return 2 minutes for 300 words " do
    text = File.read("spec/texts/300.txt")
    result = reading_time(text)
    expect(result).to eq 2
  end

  it "should return 1 minute for 100 words " do
    text = File.read("spec/texts/100.txt")
    result = reading_time(text)
    expect(result).to eq 1
  end

  it "should return 1 minute for 200 words " do
    text = File.read("spec/texts/200.txt")
    result = reading_time(text)
    expect(result).to eq 1
  end

  it "fails if empty text " do
    expect { reading_time("") }.to raise_error "TextNotFound"
  end

  it "fails if text is nil" do
    expect { reading_time(nil) }.to raise_error "TextNotFound"
  end
end