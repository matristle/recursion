def merge_sort(parent_array)
    if parent_array.length > 1
        left_child_array = parent_array.slice(0, parent_array.length/2)
        right_child_array = parent_array.slice(parent_array.length/2, parent_array.length)
        merge_sort(left_child_array)
        merge_sort(right_child_array)
        merge(left_child_array, right_child_array, parent_array)
    end
    
    parent_array
end

def merge(left_child_array, right_child_array, parent_array)  
    left_index = 0
    right_index = 0
    parent_index = 0
    
    while left_index < left_child_array.length && right_index < right_child_array.length
       
        if left_child_array[left_index] < right_child_array[right_index]
            parent_array[parent_index] = left_child_array[left_index]
            left_index += 1
        else
            parent_array[parent_index] = right_child_array[right_index]
            right_index += 1
        end
        
        parent_index += 1
    end
    
    if left_index == left_child_array.length
        parent_array[parent_index..parent_array.length] = right_child_array[right_index..right_child_array.length]
    else
        parent_array[parent_index..parent_array.length] = left_child_array[left_index..left_child_array.length]
    end
    
    parent_array
end

#----------------------------------------------------

20.times do 
    p merge_sort(Array.new(rand(10)) {rand(20)})
end
