#!/usr/bin/ruby
=begin
Analizá el script Ruby presentado a continuación e indicá:
    1. ¿Qué imprimen cada una de las siguientes sentencias? ¿De dónde está obteniendo el valor?
       1. `puts A.value`
         A es un módulo. Tiene un método de módulo #value que retorna el valor de la constante VALUE, que en ese "espacio" de código es "A".
       2. `puts A::B.value`
         B es una clase que se encuentra definida dentro del módulo A. B tiene un método de clase #value que retorna el valor de la constante VALUE, que para B es "B".
       3. `puts C::D.value`
         D es una clase que está definida dentro de la clase C. Se invoca al método de clase #value de D, que retorna el valor de la constante VALUE, que para D es "D".
       4. `puts C::E.value`
         Acceso al módulo E, que es interior a C, e invoco al método de módulo value, que retorna el valor de VALUE, que para E es "global"
       5. `puts F.value`
         F hereda de C. El método de clase #value se encuentra en esa herencia. Cuando se lo invoca en F, yo creo que se ejecuta en el contexto de F PERO NO ES ASI CHIQUITA.??????????????

    2. ¿Qué pasaría si ejecutases las siguientes sentencias? ¿Por qué?
       1. `puts A::value`
         Se invocaría al método de módulo value, que retorna la constante VALUE, que en ese espacio es "A".
         Mediante :: se accede a métodos o constantes de módulos o clases. Si empieza con mayúscula y no tiene parámetros encerrados entre paréntesis, ruby entenderá que se quiere acceder a una constante y no a un método.
       2. `puts A.new.value`
         A es un módulo, no se puede instanciar. Da undefined method 'new' for A:Module.
       3. `puts B.value`
         No reconoce B, ya que está definida dentro del módulo A
       4. `puts C::D.value`
         Toma la clase D dentro de C, e invoca a su método de clase value, que retorna VALUE, que en ese espacio es "D".
       5. `puts C.value`
         Invoca al método de clase value de C, que retorna VALUE, que en ese espacio es "global".
       6. `puts F.superclass.value`
         Lo mismo que C.value, dado que el objeto que retorna F.superclass es C.
=end
VALUE = 'global'
   
module A
   VALUE = 'A'

   class B
      VALUE = 'B'

      def self.value
         VALUE
      end

      def value
         'iB'
      end
   end

   def self.value
      VALUE
   end
end #END MODULE A

class C
   class D
      VALUE = 'D'

      def self.value
         VALUE
      end
   end #END CLASS D

   module E
      def self.value
         VALUE
      end
   end

   def self.value
      VALUE
   end
end #END CLASS C

class F < C
   VALUE = 'F'
end