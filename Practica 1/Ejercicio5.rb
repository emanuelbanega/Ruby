def reemplazar(cadena)
    return cadena.gsub("{", "do\n").gsub("}", "\nend")
end

puts reemplazar("3.times { |i| puts i }") # => "3.times do\n |i| puts i \nend"