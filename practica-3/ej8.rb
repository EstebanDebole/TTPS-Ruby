#!/usr/bin/ruby
#Sea el siguiente código:
   def fun3
      puts "Entrando a fun3"
      raise RuntimeError, "Excepción intencional"
      puts "Terminando fun3"
   rescue NoMethodError => e
      puts "Tratando excepción por falta de método"
   rescue RuntimeError => e
      puts "Tratando excepción provocada en tiempo de ejecución"
   rescue
      puts "Tratando una excepción cualquiera"
   ensure
      puts "Ejecutando ensure de fun3"
   end

   def fun2(x)
      puts "Entrando a fun2"
      fun3
      a = 5 / x
      puts "Terminando fun2"
   end

   def fun1(x)
      puts "Entrando a fun1"
      fun2 x
   rescue
      puts "Manejador de excepciones de fun1"
      raise
   ensure
      puts "Ejecutando ensure de fun1"
   end

   begin
      x = 0
      begin
         fun1 x
      rescue Exception => e
         puts "Manejador de excepciones de Main"
         if x == 0
            puts "Corrección de x"
            x = 1
            retry
         end
      end
      puts "Salida"
   end
=begin
   1. Seguí el flujo de ejecución registrando la traza de impresiones que deja el programa, analizando por qué partes del código va pasando y justificando esos pasos.
      - Entrando a fun1

      - Entrando a fun2

      - Entrando a fun3

      - Tratando excepción provocada en tiempo de ejecución: levanta intencionalmente esta excepción.

      - Ejecutando ensure de fun3: ensure siempre se ejecuta.

      - Manejador de excepciones de fun1: hay una división por 0 en fun2(ZeroDivisionError), lo que provoca el fin de su ejecución. La atrapa el rescue de fun1.

      - Ejecutando ensure de fun1: ensure siempre se ejecuta.

      - Manejador de excepciones de Main: la clausula rescue que se ejecuta en fun1 levanta una excepción con la palabra clave "raise" la cual levanta una excepción de tipo Exception.

      - Corrección de x: x vale 0.

      - Entrando a fun1: comienza la ejecución otra vez por el "retry".

      - Entrando a fun2

      - Entrando a fun3

      - Tratando excepción provocada en tiempo de ejecución

      - Ejecutando ensure de fun3

      - Terminando fun2

      - Ejecutando ensure de fun1

      - Salida

   2. ¿Qué pasaría si se permuta, dentro de `fun3`, el manejador de excepciones para `RuntimeError` y el manejador de excepciones genérico (el que tiene el rescue vacío)?
      Si se permuta y se coloca el rescue generico primero, esta va a ejecutarse porque matchea con el primero que lo puede trapear
   3. ¿El uso de `retry` afectaría el funcionamiento del programa si se mueve la línea `x = 0` dentro del segundo `begin` (inmediatamente antes de llamar a `fun1` con `x`)?
      Entra en un loop infinito el retry, ya que pisa el valor de x con 1 y como primer instruccion despues del retry lo pisa con 0 generando asi que se ejecute siempre el rescue con el retry
=end