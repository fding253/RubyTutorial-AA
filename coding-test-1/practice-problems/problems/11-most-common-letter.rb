# Write a method that takes in a string. Your method should return the
# most common letter in the array, and a count of how many times it
# appears.
#
# Difficulty: medium.

def most_common_letter(string)
#  str = string
#  mostCommonLetter = ""
#  mostCommonFreq = 0
  mostCommon = ["",0]
  
  i=0
  while i<string.length
    # For each letter, go through rest of string counting occurences of the letter. 
    j=i+1
    freq=1
    while j<string.length
      if string[i]==string[j] 
        freq += 1
      end
      j+=1
    end
    
    if freq>mostCommon[1]
      mostCommon[0] = string[i]
      mostCommon[1] = freq
    end
        
    i += 1
  end
  
  return mostCommon
#  return [mostCommonLetter, mostCommonFreq]
  
end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts(
  'most_common_letter("abca") == ["a", 2]: ' +
  (most_common_letter('abca') == ['a', 2]).to_s
)
puts(
  'most_common_letter("abbab") == ["b", 3]: ' +
  (most_common_letter('abbab') == ['b', 3]).to_s
)