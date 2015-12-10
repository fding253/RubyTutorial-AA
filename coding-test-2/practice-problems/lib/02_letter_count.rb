def letter_count(str)
    counts = {}
    
    i=0
    while i<str.length
        if str[i] == " "
            # Ignore spaces
        elsif counts[str[i]]==nil
            # Letter not in hash. Add it.
            counts[str[i]]=1
        else
            # Letter is in hash. Increment count.
            counts[str[i]] += 1
        end
        i+=1
    end
    
    return counts
end

puts(letter_count("moon moon"))