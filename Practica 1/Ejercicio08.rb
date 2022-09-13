def contar_palabras(cadena, cadena2)
    return cadena.downcase.split(" ").count(cadena2.downcase)
end

puts contar_palabras("La casa de la esquina tiene la puerta roja y la ventana blanca.", "la") # => 4