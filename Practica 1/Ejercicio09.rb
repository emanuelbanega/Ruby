def string_reverso(cadena)
    return cadena.reverse()
end

def string_sin_espacio(cadena)
    return cadena.delete(" ")
end

def string_a_arreglo_ascii(cadena)
    return cadena.split("").map { | letra | letra.ord }
end

puts string_reverso("Hola mundo") # => "odnum aloH"
puts string_sin_espacio("Hola mundo") # => "Holamundo"
puts string_a_arreglo_ascii("Hola mundo") # => [72, 111, 108, 97, 32, 109, 117, 110, 100, 111]

#Falta el metodo de cambiar vocales