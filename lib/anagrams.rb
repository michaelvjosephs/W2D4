require 'byebug'

def first_anagram?(word1, word2)
  word1.chars.permutation.include?(word2.chars)
end

# this is probably n^3 because sub! searches through the array.  We could
# implement this by deleting at the index and have this be n^2.
def second_anagram?(word1, word2)
  word1.each_char do |char1|
    word2.each_char do |char2|
      if char1 == char2
        word1.sub!(char1, "")
        word2.sub!(char2, "")
      end
    end
  end

  word1 == "" && word2 == ""
end

# average speed of ruby sort (quicksort) is n*logn, which is faster
# than the second_anagram?, which is n^2.  In worst case both are n^2.
def third_anagram?(word1, word2)
  word1.chars.sort == word2.chars.sort
end

def fourth_anagram?(word1, word2)
  word_counts = [Hash.new(0), Hash.new(0)]

  [word1, word2].each_with_index do |word, i|
    word.each_char do |char|
      word_counts[i][char] += 1
    end
  end

  word_counts[0] == word_counts[1]
end

def fifth_anagram?(word1, word2)
  letter_diffs = Hash.new(0)

  word1.each_char do |char|
    letter_diffs[char] += 1
  end

  word2.each_char do |char|
    letter_diffs[char] -= 1
  end

  letter_diffs.values.all? { |x| x == 0 }
end
