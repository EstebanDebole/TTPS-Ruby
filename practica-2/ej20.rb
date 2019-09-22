#!/usr/bin/ruby
=begin
Si no lo hiciste de esa forma en la práctica 1, escribí un enumerador que calcule la serie de Fibonacci.
=end
fibonacci = Enumerator.new do |caller|
  i1, i2 = 1, 1
  loop do
    caller.yield i1
    i1, i2 = i2, i1+i2
  end
 end

puts "- Los primeros 10 numeros de la secuencia --> #{fibonacci.first(22)}" 

# El método loop 
#     - Ejecuta el código que se encuentra dentro del bloque
#     - Se puede salir con break cuando se cumple una condición
#     - Si hay iteradores, loop terminará cuando el Enumerator se quede sin valores