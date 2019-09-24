#!/usr/bin/ruby
=begin 
Extendé las clases `TrueClass` y `FalseClass` para que ambas respondan al método de instancia `opposite`, el cual en cada caso debe retornar el valor opuesto al que recibe la invocación al método. Por ejemplo:

	false.opposite
	# => true
	true.opposite
	# => false
	true.opposite.opposite
	# => true

=end
module Oppositable
	def opposite
		!self
	end
end

class TrueClass
	include Oppositable
end
class FalseClass
	include Oppositable
end

p true.opposite	#false
p false.opposite	#true
p true.opposite.opposite	#true