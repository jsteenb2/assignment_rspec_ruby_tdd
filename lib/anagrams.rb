
class Anagrams

  def anagrams(word, dictionary)
    possible_word_matches = word.split(//).permutation.to_a.map do |letter_arr|
      letter_arr.join("").sort
    end
    anagrams = []
    possible_word_matches.each do |word|
        anagrams << word if dictionary.include? word
    end
    anagrams
  end

end
