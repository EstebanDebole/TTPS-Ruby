#!/usr/bin/ruby
#Modificá el método anterior para que en lugar de recibir un arreglo como único parámetro, reciba todos los números como parámetros separados. 
def sorting (*numbers)
   numbers.sort
end
p sorting(9,6,33,12,1,3)