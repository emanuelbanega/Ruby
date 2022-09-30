class TrueClass
    def opposite
        return !self
    end
end

class FalseClass
    def opposite
        return !self
    end
end

puts false.opposite # => true
puts true.opposite # => false
puts true.opposite.opposite # => true