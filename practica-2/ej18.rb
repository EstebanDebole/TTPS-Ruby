#!/usr/bin/ruby
=begin
Implementá un método que reciba un número variable de parámetros y un bloque, y que al ser invocado ejecute el
		bloque recibido pasándole todos los parámetros que se recibieron encapsulando todo esto con captura de excepciones
		de manera tal que si en la ejecución del bloque se produce alguna excepción, proceda de la siguiente forma:

		* Si la excepción es de clase `RuntimeError`, debe imprimir en pantalla `"Algo salió mal..."`, y retornar `:rt`.
		* Si la excepción es de clase `NoMethodError`, debe imprimir `"No encontré un método: "` más el mensaje original de
			la excepción que se produjo, y retornar `:nm`.
		* Si se produce cualquier otra excepción, debe imprimir en pantalla `"¡No sé qué hacer!"`, y relanzar la excepción
			que se produjo.

		En caso que la ejecución del bloque sea exitosa, deberá retornar `:ok`.

		> Tips: Leer sobre las sentencias `raise` y `rescue`.
=end
def exception_handler (*args)
	begin
		yield args
	rescue RuntimeError
		puts "Algo salio mal..."
		:rt
	rescue NoMethodError => e
		puts "No encontre un metodo: #{e.message}"
		:nm
	rescue 
		puts "¡No se que hacer!"
		raise
	else
			:ok
	end
end

p exception_handler('a', 3, :d) { |x| x=x/x}