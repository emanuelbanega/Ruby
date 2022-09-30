def procesar_hash(hash, bloque)
    return hash.inject({}) { | newHash, (key, value) |
        newHash[value] = bloque.call(key); newHash
    }
end

hash = { 'clave' => 1, :otra_clave => 'valor' }
puts procesar_hash(hash, ->(x) { x.to_s.upcase })