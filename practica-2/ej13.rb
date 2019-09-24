#!/usr/bin/ruby
=begin
Modificá la implementación del ejercicio anterior para que `GenericFactory` sea un módulo que se incluya como _Mixin_ en las subclases que implementaste. ¿Qué modificaciones tuviste que hacer en tus clases?
=end
module GenericFactory
	module ClassMethods
		def create(**args)
			new(**args)
		end
	end

	def self.included(base)
		base.extend(ClassMethods)
	end
	def initialize(**args)
		raise NotImplementedError
	end
end

class Person
	include GenericFactory
	attr_accessor :firstname, :lastname, :carreer
	def initialize(**args)
		self.firstname = args[:firstname] || "Cosme"
		self.lastname = args[:lastname] || "Fulanito"
		self.carreer = args[:carreer] || "Informatica papu"
	end
end

class Car
	include GenericFactory
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