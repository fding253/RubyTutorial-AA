# Write a method that takes a string and returns the number of vowels
# in the string. You may assume that all the letters are lower cased.
# You can treat "y" as a consonant.
#
# Difficulty: easy.

def count_vowels(string)
    vowels = ["a", "e", "i", "o", "u"]
    n_vowels = 0
    
    # Go through each letter in string. If vowel, increment n_vowels
    i=0
    while i<string.length
        j=0
        while j<5
            if string[i]==vowels[j]
                n_vowels += 1
                j+=1
                break
            end
            j += 1
        end
        i += 1
    end
    
    return n_vowels
        
end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts('count_vowels("abcd") == 1: ' + (count_vowels('abcd') == 1).to_s)
puts('count_vowels("color") == 2: ' + (count_vowels('color') == 2).to_s)
puts('count_vowels("colour") == 3: ' + (count_vowels('colour') == 3).to_s)
puts('count_vowels("cecilia") == 4: ' + (count_vowels('cecilia') == 4).to_s)
