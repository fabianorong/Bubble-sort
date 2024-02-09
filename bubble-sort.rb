def bubble_sort(array)    
    
    i = 0
    j = 1    
    is_sorted = false

    while is_sorted == false
        while array.length > j
            if array[j] < array[i]
                array[i], array[j] = array[j], array[i]
                j += 1
                i += 1
            elsif array[j] > array[i] || array[j] == array[i]
                j += 1
                i += 1       
            end  
        end        
        
        if array.each_cons(2).all?{|left, right| left <= right} == true
            is_sorted = true         
        else
            i = 0
            j = 1            
        end        
    
    end
    p array      
    
end

bubble_sort([4,3,78,2,0,2])

    