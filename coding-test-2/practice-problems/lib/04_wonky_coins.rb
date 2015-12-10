def wonky_coins(n)
    if n==0 
        return 1
    end
    
    count = 0
    if n/4 >= 0
        count += wonky_coins(n/4)
    end
    if n/3 >= 0
        count += wonky_coins(n/3)
    end
    if n/2 >= 0
        count += wonky_coins(n/2)
    end
    
    return count
end
