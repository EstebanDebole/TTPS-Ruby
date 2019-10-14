#!/usr/bin/ruby
=begin
Escribí una función que encuentre la suma de todos los números naturales múltiplos de
3 ó 5 menores que un número tope que reciba como parámetro.
=end

def suma (max)
   ((1...max).select { |num| num % 3 == 0 or num % 5 == 0}).sum
end
p suma(100)