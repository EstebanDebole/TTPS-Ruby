"Dada una cadena cualquiera, y utilizando los métodos que provee la clase String, realizá
las siguientes operaciones sobre el string:
	- Imprimilo con sus caracteres en orden inverso.
	- Eliminá los espacios en blanco que contenga.
	- Convertí cada uno de sus caracteres por su correspondiente valor ASCII.
	- Cambiá las vocales por números (a por 4, e por 3, i por 1, o por 0, u por 6)."
def reverse(string)
	string.reverse
end

def remove_spaces(string)
	string.delete" "
end

def convert_ascii(string)
	string.bytes
end

def change_vocal_for_number(string)
	string.gsub(/[aeiou]/, 'a' =>4, 'e' => 3,'i' => 1, 'o' => 0, 'u' => 6) 
end

p reverse("hola")
p remove_spaces("Hola Como Le Va ?")
p convert_ascii ("hello world")
p change_vocal_for_number("aeiou")