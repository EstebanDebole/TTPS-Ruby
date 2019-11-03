#!/usr/bin/ruby
=begin
Desarrollá una gema (llamada `MethodCounter`, por ejemplo) que empaquete toda la funcionalidad implementada en el ejercicio 4 de la práctica 2 (el módulo `Countable`). La forma de usarla sería algo similar a esto:

   require 'method_counter'

   class MiClase
     include MethodCounter::Countable

     def hola
       puts "Hola"
     end

     def Chau
       puts "Chau"
     end

     count_invocations_of :hola, :chau
   end
=end

## Crear propia gema ``bundle gem MethodCounter``
## Crear codigo
## gem build MethodCounter.gemspec
## gem install MethodCounter.gemspec