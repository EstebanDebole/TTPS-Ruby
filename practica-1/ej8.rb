#!/usr/bin/ruby
#¿Qué hace el siguiente código?
[:upcase, :downcase, :capitalize, :swapcase].map do |meth| 
	p "TTPS Ruby".send(meth)
end
=begin
Este código lo que hace es enviar el mensaje map al arreglo de simbolos, lo cual iterará por todos los simbolos creando una nueva coleccion, enviando por cada elemento del arreglo el mensaje send al string "TTPS Ruby", pasando como parámetro el simbolo por el cual se está iterando.El mensaje send lo que hace es enviar el mensaje que se pasa como parámetro. Por ende la salida en este caso sería:
"TTPS RUBY"
"ttps ruby"
"Ttps ruby"
"ttps rUBY"
=end