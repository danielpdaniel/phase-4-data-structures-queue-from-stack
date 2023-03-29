require_relative './stack'
require "pry"

# your code here
class MyQueue
    attr_accessor :s1, :s2

    def initialize
        @s1 = Stack.new
        @s2 = Stack.new
    end

    # def add(value)
    #     if @s1.empty?
    #         @s1.push(value)
    #         @s2.push(value)
    #     else
    #         @s1.push(value)
    #         s1 = @s1
    #         while s1.empty? == false
    #             @s2.pop
    #             @s2.push(s1.peek)
    #             s1.pop
    #         end
    #     end
    # end

    def add(value)
        if @s1.empty? == false
            @s1.push(value)
            while @s1.empty? == false
                @s2.push(@s1.peek)
                @s1.pop
            end
        else
            while @s2.empty? == false
                @s1.push(@s2.peek)
                @s2.pop
               end
               @s1.push(value)
               while @s1.empty? == false
                @s2.push(@s1.peek)
                @s1.pop
                end
        end
    end

    def peek
        @s2.peek
    end

    def remove
        peek = @s2.peek
        @s1.pop
        @s2.pop
        @s1.push(peek)
        return @s1.peek
    end
end
# binding.pry