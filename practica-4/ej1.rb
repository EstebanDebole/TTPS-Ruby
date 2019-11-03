#!/usr/bin/ruby
## ¿Qué es una gema? 
## Una gema es un paquete con código ruby que puede consistir en una librería, un framework o una aplicación.

## ¿Para qué sirve? 
## Sirven para lo mismo que las librerías o frameworks: reutilizar código, a la vez de poder incluir código de terceros en el nuestro.

## ¿Qué estructura tienen?
## Como dijimos, las gemas son paquetes; incluyen *código*, *documentación* y un *gemspec*. La estructura que presentan es la siguiente:
=begin 
* Directorio **bin**: contiene un ejecutable que será incluído en el PATH del usuario para luego poder ser ejecutado.
* Directorio **lib**: contiene el código de la gema.
* Directorio **test** o **spec**: contiene el código de los tests.
* Archivo **README**: contiene cierta documentación introductoria: cómo instalar, dependencias, cómo usar, etc. Documentación más específica suele incluirse directamente en el código.
* Archivo **Rakefile**: no es obligatorio; contiene instrucciones utilizadas por la gema *Rake* para automatizar y realizar tareas. *Rake* es una implementación en ruby de Make.
* **gemspec**: contiene información sobre la gema: *nombre*, *versión*, *licencias*, *autores*, *archivos*. Se expresa en código ruby, mediante la clase `Gem::Specification`. La información que se puede configurar se documenta en las guías de *rubygems* [[specification-reference]](http://guides.rubygems.org/specification-reference/). Puede ser un archivo en la raiz o incluirse en el Rakefile.
=end