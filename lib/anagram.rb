class Anagram
attr_accessor :word

  def initialize(word)
    @word = word
  end

  def match(potential_anagrams)
    anagrams = []

    potential_anagrams.each do |potential_anagram|
      if self.check_for_match(@word) == self.check_for_match(potential_anagram)
        anagrams << word
      end
    end
    anagrams
  end

  def check_for_match(word)
    word.split("").sort.join
  end

end
