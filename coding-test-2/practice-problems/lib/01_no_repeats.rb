def no_repeat?(year)
    str_year = year.to_s
    i=0 
    while i<str_year.length
        j=i+1
        while j<str_year.length
            if str_year[i].to_i==str_year[j].to_i
                return false
            end
            j+=1
        end
        i+=1
    end
    
    return true
    
end

def no_repeats(year_start, year_end)
    year = year_start
    yearsNoRpts = []
    
    while year <= year_end
        if no_repeat?(year)
            yearsNoRpts.push(year)
        end
        year += 1
    end
    
    return yearsNoRpts
        
end
