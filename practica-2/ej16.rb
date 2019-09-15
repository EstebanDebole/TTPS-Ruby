#!/usr/bin/ruby
=begin 
Escribí un método `da_nil?` que reciba un bloque, lo invoque y retorne si el valor de retorno del bloque fue `nil`.
	Por ejemplo:
	da_nil? { }
	# => true
	da_nil? do
		'Algo distinto de nil'
	end
	# => false
=end

def da_nil?(&block)
	block.call.nil? # => o tambien yield.nil?
end

p da_nil? { } # => true
p da_nil? {1+5} # => false