=begin 
1. Investigá la jerarquía de clases que presenta Ruby para las excepciones. ¿Para qué se utilizan las siguientes clases?
   * `IOError` lectura de un stream cerrado, escribir a un sistema de sólo lectura y operaciones parecidas.
   * `NameError` el intérprete encuentra un identificador que no puede resolver ni como método, ni como variable.
   * `RuntimeError` es la excepción que se lanza por defecto. Por ejemplo, al poner "raise" sin ningún nombre de excepción.
   * `NotImplementedError` se intenta utilizar una característica o método que no está implementada en la plataforma actual.
   * `StopIteration` StopIteration es único en el ámbito de las excepciones de Ruby, ya que no se genera en tiempo de ejecución por algo que se vuelve loco, sino que el desarrollador lo plantea manualmente cuando hay una necesidad de detener una iteración activa.
   * `TypeError` un método recibe un argumento que no puede manejar.
   * `SystemExit`  el método ` Kernel#exit ` fué invocado para finalizar el proceso actual.
   * `SystemStackError` se genera en caso de que se desborde la pila
   * `ZeroDivisionError` se genera al intentar dividir un entero por 0 (0!=0.0)
   * `StandardError` una clausula rescue sin una clase de excepcion rescatara todos los de esta clase.
	* `ArgumentError` Se genera cuando los argumentos son incorrectoss
	

	referencia -> https://airbrake.io/blog/ruby-exception-handling/ruby-exception-classes


=end