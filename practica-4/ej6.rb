#!/usr/bin/ruby
=begin
Creá un proyecto para probar el uso de Bundler:
   1. Inicializá un proyecto nuevo en un directorio vacío con el comando `bundle init`
   2. Modificá el archivo `Gemfile` del proyecto y agregá la gema `colorputs`
   3. Creá el archivo `prueba.rb` y agregale el siguiente contenido:

     ```ruby
     require 'colorputs'
     puts "Hola!", :rainbow_bl
     ```

   4. Ejecutá el archivo anterior de las siguientes maneras:
      - `ruby prueba.rb`
      - `bundle exec ruby prueba.rb`
  5. Ahora utilizá el comando `bundle install` para instalar las dependencias del proyecto
  6. Volvé a ejecutar el archivo de las dos maneras enunciadas en el paso **4**.
  7. Creá un nuevo archivo `prueba_dos.rb` con el siguiente contenido:
     ```ruby
     Bundler.require
     puts "Chau!", :red
     ```
   8. Ahora ejecutá este nuevo archivo:
      - `ruby prueba_dos.rb`
		- `bundle exec ruby prueba_dos.rb`
=end