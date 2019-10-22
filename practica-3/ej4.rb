=begin
¿Para qué sirve `retry`? ¿Cómo evitarías caer en un loop infinito al usarla?

Si ` retry ` aparece en la cláusula ` rescue ` de una expresión Begin, vuelve al comienzo del cuerpo del Begin.

~~~

begin
   do_something # exception raised
rescue
   # handles error
   retry  # restart from beginning
end

~~~

La idea de usar ` retry ` es de poder solucionar un error en tiempo de ejecución y volver a intentar ejecutar, de manera de que el programa siga su ejecución correctamente. Obviamente se esperará que el manejo de la excepción haya sido exitoso, de manera de no caer en un loop infinito.

Podemos evitar el loop infinito con una variable acumulable y preguntando por su valor en un if. SI HORRIBLE

=end