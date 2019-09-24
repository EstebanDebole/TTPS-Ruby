#!/usr/bin/ruby
=begin
11)Implementá el Mixin Countable que te permita hacer que cualquier clase cuente la cantidad de veces que los métodos de instancia definidos en ella es invocado. Utilizalo en distintas clases, tanto desarrolladas por vos como clases de la librería standard de Ruby, y chequeá los resultados. El Mixin debe tener los siguientes métodos:
	i. count_invocations_of(sym) : método de clase que al invocarse realiza las tareas necesarias para contabilizar las invocaciones al método de instancia cuyo nombre es sym (un símbolo).

	ii. invoked?(sym) : método de instancia que devuelve un valor booleano indicando si el método llamado sym fue invocado al menos una vez en la instancia receptora.

	iii. invoked(sym) : método de instancia que devuelve la cantidad de veces que el método identificado por sym fue invocado en la instancia receptora.
=end

module Countable
	def invocations
		# ||= devuelve invocations o le asigna y devuelve Hash.new(0)
		# La primera vez devuelve y asigna Hash.new(0), todas las siguientes veces devuelve la var
		@invocations ||= Hash.new(0)
	end
	module ClassMethods
		def count_invocations_of(sym)
			 # Creo una copia del metodo recibido como parametro. Su nombre sera el mismo con "o_" al principio.
			 # Con esto puedo modificar el metodo original sin perder su funcionamiento.
			 # El funcionamiento original queda en la copia que empieza con "o_".
			 alias_method(:"o_#{sym}", sym)

			 # Sobreescribo el original.
			 define_method sym do
				  # Aumento la cantidad de veces que se llamo el metodo.
				  # __method__ contiene el nombre del metodo en el que se ejecuta.
				  invocations[sym] += 1
				  
				  # Ejecuto la funcionalidad original del metodo.
				  send(:"o_#{sym}")
			 end
		end
	end
	def self.included(base)
		base.extend(ClassMethods)
	end
	def invoked?(sym)
		invocations.keys.include? sym
	end
	def invoked(sym)
		invocations[sym]
	end
end

class Greeter
	# Incluyo el Mixin
	include Countable

	def hi
	  puts 'Hey!'
	end

	def bye
	  puts 'See you!'
	end

	# Indico que quiero llevar la cuenta de veces que se invoca el método #hi
	count_invocations_of :hi
 end