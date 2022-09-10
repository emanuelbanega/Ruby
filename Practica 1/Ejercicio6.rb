def tiempo_en_palabras(tiempo)
    if tiempo.hour == 1
        str = "Es la"
    else
        str = "Son las"
    end
    case tiempo.min
    when (0..10)
      return("#{str} #{tiempo.hour} en punto")
    when(11..20)
      return("#{str} #{tiempo.hour} y cuarto")
    when(21..34)
      return("#{str} #{tiempo.hour} y media")
    when(35..44) 
      return("#{str} #{tiempo.hour} menos venticinco")
    when(45..55) 
      return("#{str} #{tiempo.hour + 1} menos cuarto")
    else
      return("Casi son las #{tiempo.hour + 1}")
    end
  end
  
  puts tiempo_en_palabras(Time.new(2022, 10, 21, 10, 1)) # => "Son las 10 en punto" 
  puts tiempo_en_palabras(Time.new(2022, 10, 21, 9, 33)) # => "Son las 9 y media" 
  puts tiempo_en_palabras(Time.new(2022, 10, 21, 8, 45)) # => "Son las 9 menos cuarto" 
  puts tiempo_en_palabras(Time.new(2022, 10, 21, 6, 58)) # => "Casi son las 7" 
  puts tiempo_en_palabras(Time.new(2022, 10, 21, 0, 58)) # => "Casi es las 1" ARREGLAR ESTE ERROR