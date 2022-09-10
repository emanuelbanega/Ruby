def multiplos_de(numeros, tope)
    return ((1..tope).select { | elemento | elemento.modulo(3).zero? && elemento.modulo(5).zero? }).sum
end

puts multiplos_de([3, 5], 100) # => 315