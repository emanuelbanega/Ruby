module Countable
    def invocations
        @invocations ||= Hash.new(0)
    end

    module ClassMethod
        def count_invocations_of(metodo)
            aliasmethod(":original#{metodo}",metodo)
            definemethod"#{metodo}" do
                invocations[method] += 1
                send(":original#{metodo}")
            end 
        end
    end

    def invoked?(metodo)
        @invocations[metodo] > 0
    end

    def invoked(metodo)
        @invocations[metodo]
    end
end

class Greeter 
    include Countable #include Countable # Incluyo el Mixin 
    
    def hi 
        puts 'Hey!' 
    end 

    def bye 
        puts 'See you!' 
    end 

    count_invocations_of :hi # Indico que quiero llevar la cuenta de veces que se invoca el mé todo #hi
end 

a = Greeter.new
b = Greeter.new 

a.invoked? :hi # => false 
b.invoked? :hi # => false 
a.hi # Imprime "Hey!" 
a.invoked :hi # => 1 
b.invoked :hi # => 0