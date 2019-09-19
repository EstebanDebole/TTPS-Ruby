#!/usr/bin/ruby
=begin
Dada la siguiente clase _abstracta_ `GenericFactory`, implementá subclases de la misma que permitan la creación de instancias de dichas clases mediante el uso del método de clase `.create`, de manera tal que luego puedas usar esa lógica para instanciar objetos sin invocar directamente el constructor `new`.
=end
class GenericFactory
	def self.create(**args)
		new(**args)
	end

	def initialize(**args)
		raise NotImplementedError
	end
end

class GenericFactoryChild < GenericFactory
	def initialize **args
	end
end

p GenericFactoryChild.create()