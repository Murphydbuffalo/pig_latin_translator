require_relative '../lib/pig_latin'

describe "#translate" do 
  
  it "translates words that begin with a single consonant" do
    word = "Happy"
    expect(word.translate).to eq "Appyhay"
  end

  it "translates words that begin with a group of consonants" do
    word = "gLoVe"
    expect(word.translate).to eq "Oveglay"
  end

  it "translates words that begin with a vowel" do
    word = "egg"
    expect(word.translate).to eq "Eggway"
  end

end