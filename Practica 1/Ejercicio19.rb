def notacion_hexadecimal(colores)
    return "#" + colores.map { | elemento | format("%02X", elemento).upcase }.join 
end

def notacion_entera(colores)
    return colores.map.with_index { | elemento, i | elemento * (256.pow(i))}.sum 
end

puts notacion_hexadecimal([0, 128, 255]) # => '#0080FF'
puts notacion_entera([0, 128, 255]) # => 16744448