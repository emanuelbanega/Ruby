def longitud(*args)
    args.each { | elemento | puts "#{elemento} --> #{elemento.to_s.length}" }
end

longitud(9, Time.now, 'Hola', {un: 'hash'}, :ruby) 