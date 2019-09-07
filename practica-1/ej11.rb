#!/usr/bin/ruby
=begin 
Escribí una función llamada rot13 que encripte un string recibido como parámetro
utilizando el algoritmo ROT13 (https://es.wikipedia.org/wiki/ROT13) . Por ejemplo:
	rot13("¡Bienvenidos a la cursada 2019 de TTPS Opción Ruby!")
	=> "¡Ovrairavqbf n yn phefnqn 2019 qr GGCF Bcpvóa Ehol! 
=end

def rot13 (string)
	string.tr("a-zA-Z", "n-za-mN-ZA-M")
end
p rot13("¡Bienvenidos a la cursada 2019 de TTPS Opcion Ruby!")