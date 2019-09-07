#!/usr/bin/ruby
=begin
Escribí una función que convierta a palabras la hora actual, dividiendo en los siguientes rangos los minutos:

Si el minuto está entre 0 y 10, debe decir 'en punto',
si el minuto está entre 11 y 20, debe decir 'y cuarto',
si el minuto está entre 21 y 34, debe decir 'y media',
si el minuto está entre 35 y 44, debe decir 'menos veinticinco' (de la hora siguiente),
si el minuto está entre 45 y 55, debe decir 'menos cuarto' (de la hora siguiente),
y si el minuto está entre 56 y 59, debe decir 'casi las' (y la hora siguiente)
=end

def en_palabras(time = Time.now)
    case time.min
        when 0..10
            e"Son las #{time.hour} en punto"
        when 11..20
            "Son las #{time.hour} y cuarto"
        when 21..34
            "Son las #{time.hour} y media"
        when 35..44
            "Son las #{time.hour + 1} menos vinticinco"
        when 45..55 
            "Son las #{time.hour + 1} menos cuarto"
        else
            "Son casi las #{time.hour + 1}"
    end
end

p en_palabras(Time.now)