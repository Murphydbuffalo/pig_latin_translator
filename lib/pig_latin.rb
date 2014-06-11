class PigLatinTranslation
  attr_reader :string
  
  def initialize(string)
    @string = string
  end
  
  def valid_input?(word)
  	characters = word.split('')
    characters.all? do |char| 
    	('a'..'z').to_a.any? {|letter| char.downcase == letter} 
    end
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
    position = 100
    consonants = nil
    if vowels.any? {|vowel| string[0].downcase == vowel}
    	word = ("#{string}way").capitalize 
    else
    	vowels.each do |v| 
    	  if string.include?(v)	
    		  position = string.index(v) if position > string.index(v)
    	  end
    	end
    	
    	consonants = string[0..(position - 1)]
    	new_string = "#{string[position..(string.length - (position - 1) )]}#{consonants}" 
    	word = ("#{new_string}ay").capitalize 
    end
    word
  end

end

# puts "Please enter a word:"
# input = PigLatinTranslation.new(gets.chomp)
# puts input.translate

