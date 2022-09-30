VALUE = 'global' 

module A 
    VALUE = 'A' 

    class B 
        VALUE = 'B' 

        def self.value 
            VALUE 
        end 

        def value 
            'iB' 
        end 
    end 
    
    def self.value 
        VALUE 
    end 
end 

class C 
    class D 
        VALUE = 'D' 
        
        def self.value 
            VALUE 
        end 
    end 

    module E 
        def self.value 
            VALUE 
        end 
    end 
    
    def self.value 
        VALUE 
    end 
end 

class F < C
     VALUE = 'F' 
end

puts A.value # ==> A
puts A::B.value # ==> B
puts C::D.value # ==> C
puts C::E.value # ==> Global
puts F.value # ==> Global

puts A::value # ==> A
#puts A.new.value # ==> Error
#puts B.value # ==> Error
puts C::D.value # ==> D
puts C.value # ==> Global
puts F.superclass.value # ==> Global