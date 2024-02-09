# Bubble Sort Implementation 

## Description:

This repository contains my implementation of the Bubble Sort algorithm, a simple sorting technique often used for educational purposes. I completed this project as part of The Odin Project's web development curriculum.

### Algorithm:

Bubble Sort works by repeatedly iterating through an array, comparing adjacent elements, and swapping them if they are in the wrong order. This process continues until no more swaps are necessary, indicating that the array is sorted.

### Implementation:

This implementation defines a method named bubble_sort that takes an array as input and returns a sorted array. The method follows the core principles of Bubble Sort:

1. Iterate through the array from beginning to end.
1. Compare each element with its next neighbor.
1. If the current element is greater than its neighbor, swap their positions.
1. Repeat steps 1-3 until no more swaps occur, indicating a sorted array.

### Example
```ruby
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
```
### Expected output
```ruby
[0,2,2,3,4,78]
