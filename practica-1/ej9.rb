#!/usr/bin/ruby
=begin
Escribí una función que dado un arreglo que contenga varios string cualesquiera,
retorne un nuevo arreglo donde cada elemento es la longitud del string que se
encuentra en la misma posición del arreglo recibido como parámetro. Por ejemplo:
   longitud(['TTPS', 'Opción', 'Ruby', 'Cursada 2019'])
   # => [4, 6, 4, 12]	
=end
def longuitud (arr)
   arr.map &:length
end
p longuitud(['TTPS', 'Opción', 'Ruby', 'Cursada 2019'])