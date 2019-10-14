#!/usr/bin/ruby
=begin
Implementá el módulo Reverso para utilizar como Mixin e incluilo en alguna clase para probarlo. Reverso debe contener los
siguientes métodos:
i. #di_tcejbo : Imprime el object_id del receptor en espejo (en orden inverso).
ii. #ssalc : Imprime el nombre de la clase del receptor en espejo.
=end
module Reverso
   def di_tcejbo
      self.object_id.to_s.reverse
   end
   def ssalc
      self.class.to_s.reverse
   end
end

class Prueba
   include Reverso
end

prueba = Prueba.new
p "Metodo di_tcejbo --> #{prueba.di_tcejbo}"
p "Metodo ssalc --> #{prueba.ssalc}"