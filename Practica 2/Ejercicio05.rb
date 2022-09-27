def cuanto_falta?(fecha = Time.now())
    falta = (Time.new(fecha.year,fecha.month,fecha.day,23,59,59) - fecha).to_i
    minutos = (falta / 60).to_i
    puts "Faltan #{minutos} minutos"
end

cuanto_falta?(Time.new(2032, 12, 31, 23, 59, 59))