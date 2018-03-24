class Anagram
attr_accessor :word

  def initialize(word)
    @word = word
  end

  def match(potential_anagrams)
    anagrams = []

    potential_anagrams.each do |word|
      if self.reorder(@word) == self.reorder(word)
      anagrams << word
      end
    end
    anagrams
  end

  def reorder(word)
    word.split("").sort.join
  end

end
