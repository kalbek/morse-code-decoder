module MyEnumerable
    def all?(&block)
        each {|element| return false unless yield(element) } 
        true
    end
end