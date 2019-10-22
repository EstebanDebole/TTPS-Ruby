=begin
¿Para qué sirven `begin .. rescue .. else` y `ensure`? Pensá al menos 2 casos concretos en que usarías estas sentencias en un script Ruby.

https://es.wikibooks.org/wiki/Programaci%C3%B3n_en_Ruby/Manejo_de_excepciones

#### Begin

Para manejar excepciones (handle exceptions), incluímos el código que pueda generar una excepción en un bloque begin-end y usamos una o más cláusulas rescue para indicarle a Ruby los tipos de excepción que queremos manejar. Es importante notar que el cuerpo de la definición de un método es un bloque begin-end explícito; begin es omitido y todo el cuerpo de la definición del método está sujeto al manejo de excepciones hasta que aparezca la palabra end.

#### Rescue

Para cada cláusula rescue en el bloque begin, Ruby compara la excepción generada con cada uno de los parámetros en turno. La ocurrencia tiene éxito si la excepción nombrada en la cláusula rescue es del mismo tipo que la excepción generada. El código en una cláusula else es ejecutado si el código en la expresiôn begin es ejecutado sin excepciones. Si una excepción ocurre, entonces la cláusula else no es ejecutada. El uso de una cláusula eles no es particularmente común en Ruby.

#### Else

Ejecuta su bloque si el nombre de la excepción levantada no coincide con ninguno definido detrás de ` rescue `.

#### Ensure

Si necesitas garantizar que algún proceso es ejecutado al final de un bloque de código sin importar si se generó una excepción o no, puedes usar la cláusula ensure. ensure va al final de la última cláusula rescue y contiene un bloque de código que siempre va a ser ejecutado.

=end