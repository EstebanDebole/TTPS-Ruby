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

class Person < GenericFactory
	attr_accessor :firstname, :lastname, :carreer
	def initialize(**args)
		self.firstname = args[:firstname] || "Cosme"
		self.lastname = args[:lastname] || "Fulanito"
		self.carreer = args[:carreer] || "Informatica papu"
	end
end

class Car < GenericFactory
	attr_accessor :brand, :model, :colour
	def initialize(**args)
		self.brand = args[:brand]
		self.model = args[:model]
		self.colour = args[:colour]
	end
end

person = Person.create(
	firstname: "Esteban",
	lastname: "Debole",
	carreer: "Lic. en Informática")

another_person = Person.create

car = Car.create(
	brand: "Gol",
	model: "Power",
	colour: "White")

puts person.firstname
puts person.lastname
puts person.carreer

puts another_person.firstname
puts another_person.lastname
puts another_person.carreer

puts car.brand
puts car.model
puts car.colour