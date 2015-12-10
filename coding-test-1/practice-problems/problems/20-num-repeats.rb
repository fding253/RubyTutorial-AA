# Write a method that takes in a string and returns the number of
# letters that appear more than once in the string. You may assume
# the string contains only lowercase letters. Count the number of
# letters that repeat, not the number of times they repeat in the
# string.
#
# Difficulty: hard.

def num_repeats(string)
    # Keep track of letters
    lettercount = []
    num_rpt_letters=0 
    
    # Walk through string
    i=0
    while i<string.length
        
        # Check whether letter has already been counted
        letterfound = false
        j=0
        
        while j<lettercount.length
            # If letter has already appeared, increment the count
            if string[i]==lettercount[j][0]
                lettercount[j][1]+=1
                letterfound = true
                break
            end
            j+=1
        end
        
        # Letter is not in lettercount, add it
        if !letterfound
            lettercount.push([string[i], 1])
        end
        
        i+=1
    end
    
    # Go through lettercount, and see how many appeared in our string more than once
    i=0
    while i<lettercount.length
        puts(lettercount[i][0] + lettercount[i][1].to_s)
        if lettercount[i][1] > 1
            num_rpt_letters += 1
        end
        i += 1
    end
    
    
    return num_rpt_letters
    
end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts('num_repeats("abdbc") == 1: ' + (num_repeats('abdbc') == 1).to_s)

# one character is repeated
puts('num_repeats("aaa") == 1: ' + (num_repeats('aaa') == 1).to_s)
puts('num_repeats("abab") == 2: ' + (num_repeats('abab') == 2).to_s)
puts('num_repeats("cadac") == 2: ' + (num_repeats('cadac') == 2).to_s)
puts('num_repeats("abcde") == 0: ' + (num_repeats('abcde') == 0).to_s)
