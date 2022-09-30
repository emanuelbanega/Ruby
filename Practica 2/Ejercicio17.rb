def capturador(*args)
    begin
        args.each { |x| yield x}
        return :ok
    rescue RuntimeError => excepción
        puts "Hay algo mal que no anda bien"
        return :rt
    rescue NoMethodError => excepción
        puts "Y este método? #{excepción.message}}"
        return :nm
    rescue => excepción
        puts "Y ahora?"
        raise excepción.message
    end
end

puts capturador("a","b","c") { | letra | puts "Letra #{letra}: #{letra.ord} en ascii"}