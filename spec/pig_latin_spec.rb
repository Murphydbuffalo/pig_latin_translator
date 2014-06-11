require 'spec_helper'

describe PigLatinTranslation do
  describe "#translate" do 
    
    it "translates words that begin with a single consonant" do
      word = PigLatinTranslation.new("Happy")
      expect(word.translate).to eq "Appyhay"
    end

    it "translates words that begin with a group of consonants" do
      word = PigLatinTranslation.new("gLoVe")
      expect(word.translate).to eq "Oveglay"
    end

    it "translates words that begin with a vowel" do
      word = PigLatinTranslation.new("egg")
      expect(word.translate).to eq "Eggway"
    end
  end
end