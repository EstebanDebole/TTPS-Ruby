#!/usr/bin/ruby
=begin
11)Implementá el Mixin Countable que te permita hacer que cualquier clase cuente la cantidad de veces que los métodos de instancia definidos en ella es invocado. Utilizalo en distintas clases, tanto desarrolladas por vos como clases de la librería standard de Ruby, y chequeá los resultados. El Mixin debe tener los siguientes métodos:
	i. count_invocations_of(sym) : método de clase que al invocarse realiza las tareas necesarias para contabilizar las invocaciones al método de instancia cuyo nombre es sym (un símbolo).

	ii. invoked?(sym) : método de instancia que devuelve un valor booleano indicando si el método llamado sym fue invocado al menos una vez en la instancia receptora.

	iii. invoked(sym) : método de instancia que devuelve la cantidad de veces que el método identificado por sym fue invocado en la instancia receptora.
=end

module Countable
	def count_invocations_of(sym)
		
	end
	def invoked?(sym)

	end
	def invoked(sym)

	end
end