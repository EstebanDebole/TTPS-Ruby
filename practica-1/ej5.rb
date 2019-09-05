=begin
Escribí una función llamada contar que reciba como parámetro dos string y que retorne
la cantidad de veces que aparece el segundo string en el primero, sin importar
mayúsculas y minúsculas. Por ejemplo:
				contar('La casa de la esquina tiene la puerta roja y la ventana blanca.', 'la') # => 5
=end
def contar (a_string, another_string)
	a_string.scan(/#{another_string}/i).size
end
p contar("La casa de la esquina tiene la puerta roja y la ventana blanca.", "la")
