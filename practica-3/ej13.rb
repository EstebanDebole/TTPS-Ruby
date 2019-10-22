#!/usr/bin/ruby
=begin
Suponé que tenés que desarrollar una función llamada 'expansor' la cual recibe un string (conformado únicamente con letras) y devuelve otro string donde cada letra aparezca tantas veces según su lugar en el abecedario.

    Un ejemplo simple sería:
    ```ruby
    expansor 'abcd'
    # => 'abbcccdddd'
    ```

    A continuación se presentará su especificación (sin implementar):

    ```ruby
    require 'minitest/autorun'
    require 'minitest/spec'

    describe 'expansor' do
      # Casos de prueba con situaciones y/o entradas de datos esperadas
      describe 'Casos felices' do
        describe 'cuando la entrada es el string "a"' do
          it 'debe devolver "a"'
        end

        describe 'cuando la entrada es el string "f"' do
          it 'debe devolver "ffffff"'
        end

        describe 'cuando la entrada es el string "escoba"' do
          it 'debe devolver "eeeeessssssssssssssssssscccooooooooooooooobba"'
        end
      end

      # Casos de pruebas sobre situaciones inesperadas y/o entradas de datos anómalas
      describe 'Casos tristes' do
        describe 'cuando la entrada no es un string' do
          it 'debe disparar una excepción estándar con el mensaje "La entrada no es un string"'
        end

        describe 'cuando la entrada es el string vacío' do
          it 'debe disparar una excepción estándar con el mensaje "El string es vacío"'
        end

        describe 'cuando la entrada es el string "9"' do
          it 'debe disparar un excepción estándar con el mensaje "El formato del string es incorrecto"'
        end

        describe 'cuando la entrada es el string "*"' do
          it 'debe disparar una excepción estándar con el mensaje "El formato del string es incorrecto"'
        end
      end
    end
    ```

    1. Completar la especificación de los casos de prueba.
    2. Implementar la función `expansor` y verificar que todos los casos pasen.

=end