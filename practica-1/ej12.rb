#!/usr/bin/ruby
=begin 
Escribí una función más genérica, parecida a la del ejercicio anterior, que reciba como
parámetro un string y un número n, y que realice una rotación de n lugares de las letras
del string y retorne el resultado. Por ejemplo:
	rot13("¡Bienvenidos a la cursada 2019 de TTPS Opción Ruby!")
	=> "¡Ovrairavqbf n yn phefnqn 2019 qr GGCF Bcpvóa Ehol! 
=end

def rot(string,a_size)
	string.tr "a-zA-Z", "#{(97 + a_size).chr}-za-#{(96 + a_size).chr}#{(65 + a_size).chr}-ZA-#{(64 + a_size).chr}"
end
#p rot("¡Bienvenidos a la cursada 2019 de TTPS Opcion Ruby!",13)
p rot(ARGV[0],ARGV[1].to_i)
