#!/usr/bin/ruby
=begin
Modificá la implementación del ejercicio anterior para que `GenericFactory` sea un módulo que se incluya como _Mixin_ en las subclases que implementaste. ¿Qué modificaciones tuviste que hacer en tus clases?
=end
module GenericFactory
	def create(**args)
		self.new(**args)
	end

	def initialize(**args)
		raise NotImplementedError
	end
end

class GenericFactoryExtender
	extend GenericFactory
	def initialize **args
	end
end