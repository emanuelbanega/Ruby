class Array
    def randomly(&block)
        if block_given?
            self.shuffle.each { | elemento |
                block.call(elemento)
            }
        else
            self.shuffle.to_enum
        end
    end
end

[1, 2, 3, 4].randomly { |x| puts x + 1 }

enumerador = [1, 2, 3, 4].randomly
enumerador.each { | elemento | puts "El elemento es #{elemento}" }