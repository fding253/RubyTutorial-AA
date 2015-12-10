# Write a method that takes in a string. Return the longest word in
# the string. You may assume that the string contains only letters and
# spaces.
#
# You may use the String `split` method to aid you in your quest.
#
# Difficulty: easy.

def longest_word(sentence)
  words = sentence.split
  num_words = words.length
  longest_idx = -1  #index of longest word so far
  longest_lgth = -1   #length of longest word so far
  
  # Loop through the words in the sentence.
  word_idx = 0
  while word_idx < num_words
    if words[word_idx].length > longest_lgth
      longest_lgth = words[word_idx].length
      longest_idx = word_idx
    end
    word_idx += 1
  end
  
  return words[longest_idx]
    
end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts(
  'longest_word("short longest") == "longest": ' +
  (longest_word('short longest') == 'longest').to_s
)
puts(
  'longest_word("one") == "one": ' +
  (longest_word('one') == 'one').to_s
)
puts(
  'longest_word("abc def abcde") == "abcde": ' +
  (longest_word('abc def abcde') == 'abcde').to_s
)
