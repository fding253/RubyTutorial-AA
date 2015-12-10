# Had some trouble because I got confused with i's and 1's

def nearest_larger(arr, idx)
    i=1
    while idx-i>=0 || idx+i<arr.length
        # Check to left of idx first
        if (idx-i>=0) && (arr[idx-i] > arr[idx])
            # If it is larger, found the nearest larger... return it
            return idx-i
        end
        
        # Now check to right, if larger return that
        if (idx+1<arr.length) && (arr[idx+i]>arr[idx])
            return idx+i
        end
        
        # Neither were larger (or no more elements in array in one direction) - increment i    
        i+=1
    end
    
    # Looked through array without finding a larger element: return nil
    return nil
end