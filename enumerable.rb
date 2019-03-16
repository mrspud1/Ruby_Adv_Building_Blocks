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
    def my_none?
        self.my_each { |x|
            if yield(x)
                return false
            end
        }
        return true
    end
    def my_count
        counter = 0
        self.my_each {|x|
            if yield(x)
                counter += 1
            end
        }
        return counter
    end
    def my_map
        counter = 0
        new_array = []
        while counter < self.length
            new_array.push(yield(self[counter]))
            counter += 1
        end
        return new_array
    end
    def my_inject input=nil
        counter = 1
        if input
            temp_output = input
            counter = 0
        else
            temp_output = self[0]
        end
        while counter < self.length
            temp_output = yield(temp_output, self[counter])
            counter += 1
        end
        temp_output
    end
end
