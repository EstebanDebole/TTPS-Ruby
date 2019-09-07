#!/usr/bin/ruby
=begin
Escribí una función llamada reemplazar que reciba un String y que busque y reemplace en el mismo cualquier 
ocurrencia de { por do\n y cualquier ocurrencia de } por \nend, de modo que convierta los bloques escritos 
con llaves por bloques multilínea con do y end. Por ejemplo:"
	#reemplazar("3.times { |i| puts i }")
	# => "3.times do\n |i| puts i \nend
=end

def reemplazar string
    string.gsub!("{", "do\n") 
    string.gsub("}", "\nend")	    
end

# gsub! reemplaza y devuelve en el mismo string que le pasamos. No devuelve otro string.

p reemplazar("3.times { |i| puts i }")