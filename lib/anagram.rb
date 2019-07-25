require ('pry')

class AnagramMachine
  attr_accessor(:word, :word1)

  def initialize(word, word1)
    @word = word.downcase.gsub(/[^a-z0-9]/i, '').split(//).sort
    @word1 = word1.downcase.gsub(/[^a-z0-9]/i, '').split(//).sort
  end

  def anagram
    if @word == @word1
      p "This is an anagram"
    else
      p "They don't seem to match.."
    end
  end

  def vow_check
    if  @word.any?{ |x| ["a", "e", "i", "o", "u"].include?(x) } || @word1.any?{ |x| ["a", "e", "i", "o", "u"].include?(x) }
      p "This is a word"
    else
      return p "Not a word"
    end
  end

  def antigram_check
    is_antigram = true
    for letters in @word do
      if @word1.include?(letters)
        is_antigram = false
        break
      end
    end
    if is_antigram
      return "You have submitted an antigram, nothing matches!"
    end
    return "This neither an antigram or anagram"
  end
end



# if @word != @word1
#   p "You have submitted an antigram, nothing matches!"
# else
# end
