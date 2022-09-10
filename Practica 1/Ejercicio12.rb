def longitud(palabras)
    return palabras.map { | elemento | elemento.size }
end

puts longitud(['TTPS', 'Opción', 'Ruby', 'Cursada 2022']) # => [4, 6, 4, 12]