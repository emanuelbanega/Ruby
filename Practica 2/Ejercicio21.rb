require 'prime'

def primes(tope)
    enumerador = Prime.first tope
    enumerador.each { | numero |
        puts numero
    }
end

p primes 10