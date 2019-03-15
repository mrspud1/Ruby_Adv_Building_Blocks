module Enumerable
    def my_each
        for x in 0...self.length do
            yield(self[x])
        end
    end
    def my_each_with_index
        for x in 0...self.length do
            yield(self[x], x)
        end
    end
    def my_select
        arr = []
        self.my_each {|x| arr.push(x) if yield(x)}
        arr
    end
    def my_all?
        self.my_each {|x| 
            unless yield(x)
                return false
            end
        }
        return true
    end
    def my_any?
        self.my_each {|x| 
            if yield(x)
                return true
            end
        }
        return false
    end
end



array1 = ["hi",2,3]
array2 = array1.my_any? do |item|
    item.is_a? String
end

puts array2

