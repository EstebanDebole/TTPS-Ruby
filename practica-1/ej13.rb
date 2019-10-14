#!/usr/bin/ruby
=begin
Escribí un script en Ruby que le pida al usuario su nombre y lo utilice para saludarlo
imprimiendo en pantalla ¡Hola, <nombre>!. Por ejemplo
=end
def nombre
    gets.chomp #elimina salto de linea del input
end
puts "Por favor, ingrese su nombre: " 
puts "Hola, #{nombre}"