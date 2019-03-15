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
end

array1 = ["hi",2,3]

array1.each_with_index do |item, index|
   puts item.to_s + index.to_s
end

array1.my_each_with_index do |item, index|
    puts item.to_s + index.to_s
end