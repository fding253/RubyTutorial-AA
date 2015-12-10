def bubble_sort(arr)
    i=0
    while i<arr.length-1
        j=0
        while j<arr.length-i-1
            if arr[j]>arr[j+1]
                temp = arr[j]
                arr[j] = arr[j+1]
                arr[j+1] = temp
            end
            j+=1
        end
        i+=1
    end
    return arr
end
