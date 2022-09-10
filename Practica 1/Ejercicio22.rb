def multiplos_de(numeros, tope)
    return ((1..tope).select { | elemento | numeros.all? { | numero | elemento.modulo(numero).zero? } }).sum
end

puts multiplos_de([3, 5, 17, 28, 65], 100_000) # => 92820