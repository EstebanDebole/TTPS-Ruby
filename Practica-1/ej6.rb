"Modificá la función anterior para que sólo considere como aparición del segundo string
cuando se trate de palabras completas. Por ejemplo:
contar_palabras('La casa de la esquina tiene la puerta roja y la ventana blanca.', 'la') # => 4"
def contar (aString, anotherString)
	aString.scan(/\b#{anotherString}\b/i).size
end
p contar("La casa de la esquina tiene la puerta roja y la ventana blanca.", "la")
	