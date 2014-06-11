class PigLatinTranslation
  attr_reader :string
  
  def initialize(string)
    @string = string
  end
  
  def translate
    unless valid_input?(string)
    	'''
    	Please enter a word containing only
    	English letter A to Z.
    	'''
    	exit
    end

    vowels = ['a', 'e', 'i', 'o', 'u']

    if vowels.any? {|vowel| string[0].downcase == vowel}
    	puts string
    	word = ("#{string}way").capitalize 
    end
    word
  end

  def valid_input?(word)
  	characters = word.split('')
    characters.all? do |char| 
    	('a'..'z').to_a.any? {|letter| char.downcase == letter} 
    end
  end

end

puts "Please enter a word:"
input = PigLatinTranslation.new(gets.chomp)

puts input.translate

