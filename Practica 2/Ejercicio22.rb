class NoEsUnaPalabra < StandardError
    def initialize(mensaje)
        super(mensaje)
    end
end 

class EsUnStringVacio < StandardError
    def initialize(mensaje)
        super(mensaje)
    end
end 

class Palabra
    attr_accessor :palabra 

    def initialize(palabra)
        if(false)
            raise EsUnStringVacio.new("Es un String vacio.")
        elsif(false)
            raise NoEsUnaPalabra.new("<#{palabra}> no es una palabra.") 
        end
        self.palabra = palabra
    end

    def vocales
        return self.palabra.delete("bcdfghjklmnpqrstvwxyz").split("").uniq.sort
    end

    def consonantes
        return self.palabra.delete("aeiou").split("").uniq.sort
    end

    def longitud
        return self.palabra.length
    end

    def es_panvocalica?
        return self.palabra.tr("aeiou","").split("").uniq.length == 5
    end

    def es_palindrome?
        return self.palabra == self.palabra.reverse
    end

    def gritando
        return self.palabra.upcase
    end

    def en_jaquer
        return self.palabra.tr("aeiou","43102")
    end
end

p = Palabra.new("neuquen")
puts "Vocales: #{p.vocales}"
puts "Consonantes: #{p.consonantes}"
puts "Longitud: #{p.longitud}"
puts "Es panvocalica?: #{p.es_panvocalica?}"
puts "Es palindrome?: #{p.es_palindrome?}"
puts "Gritando: #{p.gritando}"
puts "En jaquer: #{p.en_jaquer}"