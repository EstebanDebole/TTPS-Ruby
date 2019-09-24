#!/usr/bin/ruby
require 'matrix' #matrices

class Image
	attr_accessor :data, :size

	def initialize(data = nil, size = 1024)
		self.size = size
		self.data = data || Matrix.build(size) { Math::PI } # crea una matrizcon valor PI en cada posicion
	end

	def header_bytes
		Matrix.rows([data.first(size)])
	end

	# Distintos filtros de imágenes:

	def filter_a
		Image.new data.map { |e| e ** 1.2 }
	end

	def filter_b
		Image.new data.map { |e| e ** 1.4 }
	end
	
	def filter_c
		Image.new data.map { |e| e ** 1.8 }
	end

	def filter_d
		Image.new data.map { |e| e ** 2 }
	end
	
	def filter_e
		Image.new data.map { |e| e ** 2.2 }
	end
	
	def filter_f
		Image.new data.map { |e| e ** 2.4 }
	end

  #- Fin de filtros

	def all_filters
		('a'..'f').inject(self) do |pipe, type|
			pipe.public_send "filter_#{type}"
		 end
	end
end

image = Image.new
image.filter_a.filter_c.filter_e # => Esto no realiza ningún cálculo.
image.filter_a.filter_c.filter_e.header_bytes # => Esto sí realiza cálculos para obtener la info de la cabecera.

#Podria llamar en cada filtro a otra funcion (filtro generico) con el argumento concreto ej (filter 1.2) y en el metodo generico hacer uso de un enumerador lazy