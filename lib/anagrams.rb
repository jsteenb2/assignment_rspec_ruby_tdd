class Anagrams
  def initialize
  end

  # def anagrams(word, dictionary)
  #   possible_word_matches = word.split(//).permutation.to_a

  #   possible_word_matches.map! do |letter_arr|
  #     letter_arr.join("")
  #   end


  #   p possible_word_matches
  #   p dictionary

  #   dictionary.delete_if { |word| !possible_word_matches.include?(word)}
  #   dictionary.map{ |word| word.upcase }
  # end

  def anagrams(word, dictionary)
    anagrams = []

    letter_counter = Hash.new(0)

    word.each_char do |letter|
      letter_counter[letter] += 1
    end

    dictionary.each do |word|
      dict_word_letter_counter = Hash.new(0)

      word.each_char do |letter|
        dict_word_letter_counter[letter] += 1
      end

      if dict_word_letter_counter == letter_counter

        anagrams << word.upcase
      end
    end
    anagrams
  end

end
