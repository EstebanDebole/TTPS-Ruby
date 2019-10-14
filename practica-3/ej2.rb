=begin 
¿Cuál es la diferencia entre `raise` y `throw`? ¿Para qué usarías una u otra opción?
   https://coderwall.com/p/lhkkug/don-t-confuse-ruby-s-throw-statement-with-raise

   Throw and Catch: Se usa como un "go to". La idea es que la ejecución siga a partir de una determinada etiqueta. * No se usa para excepciones *.

   Raise and rescue: maneja excepciones. La palabra clave ` raise ` por defecto levanta una excepción de la clase RuntimeError, como fué definido en el punto anterior. Para levantar cualquier otra excepción, será necesario indicar su nombre: ` rescue nombreExcepcion `.

=end