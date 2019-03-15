def bubble_sort_by array
    counter = 0
    while counter <= array.length
        for x in 0...array.length-1 do
            result = yield(array[x], array[x+1])
            if result > 0
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

array = bubble_sort_by(["hi","hello","hey"]) do |left,right|
    left.length - right.length
end

puts array