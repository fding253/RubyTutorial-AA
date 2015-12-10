def ordered_vowel_word?(word)
    vowels = ["a","e","i","o","u"]
    prev_vowel = "a"
    
    i=0
    while i<word.length
        # If letter is a vowel, check whether it is in alphabetical order
        if vowels.include?(word[i])
            if prev_vowel > word[i]
                return false
            end
            prev_vowel = word[i]
        end
        i+=1
    end
    
    return true
    
end

def ordered_vowel_words(str)
    words=str.split(" ")
    ordered_words=[]
    
    i=0
    while i<words.length
        if ordered_vowel_word?(words[i])
            ordered_words.push(words[i])
        end
        i+=1
    end
    
    return ordered_words.join(" ")
    
end

