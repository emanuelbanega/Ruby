def contar(cadena, cadena2)
    return cadena.downcase.scan(cadena2.downcase).count
end

puts contar("La casa de la esquina tiene la puerta roja y la ventana blanca.", "la") # => 5