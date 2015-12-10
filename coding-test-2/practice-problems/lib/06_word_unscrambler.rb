def are_anagrams?(word1, word2)
    w1 = word1.split("").sort
    w2 = word2.split("").sort

    return w1==w2
end

def word_unscrambler(str, words)
    # Go through all words, and add them if an anagram of str
    anagrams = []
    
    words.each do |word|
        if word.length==str.length
            if are_anagrams?(word,str)
                anagrams.push(word)
            end
        end
    end
    
    return anagrams
end

