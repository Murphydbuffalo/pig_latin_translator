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
    position = 100
    consonants = nil
    if vowels.any? {|vowel| string[0].downcase == vowel}
    	word = ("#{string}way").capitalize 
    else
    	#Find first vowel in the word
    	vowels.each do |v| 
    	  if string.include?(v)	
    		  position = string.index(v) if position > string.index(v)
    	  end
    	end
    	
    	consonants = string[0..(position - 1)]
    	
    	new_string = "#{string[position..(string.length - (position) )]}#{consonants}" #Move preceding letters to the end of the word 
    	
    	word = ("#{new_string}ay").capitalize #Add "ay" to end of the word 
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

