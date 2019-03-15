def bubble_sort array
    counter = 0
    while counter <= array.length
        for x in 0...array.length-1 do
            if array[x].to_i > array[x+1].to_i
                stored_value = array[x]
                array[x] = array[x+1]
                array[x+1] = stored_value
            end
        end
        counter += 1
        if counter > 1000000
            break
        end
    end
    return array
end

array1 = [1000,4,1,2,56,3,134,3,1,3,55,6,11,555,123,666,0]
puts array1.join(",")
puts "Sorted:"

sorted_array = bubble_sort(array1)
puts sorted_array.join(",")