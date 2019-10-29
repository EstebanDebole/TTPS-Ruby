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

def expansor(string) 
    raise StandardError, "La entrada no es un string" unless string.is_a? String 
    raise StandardError, "El string es vacío" if string.length == 0 
    # con el string.to_i, "abc" == 0, "5abc" == 5 (separar el caso del 0)
    raise StandardError, "El formato del string es incorrecto" if string.to_i != 0 
    # si tiene solo alfa numericos (en realidad letras pq los numeros los checkeas arriba)
    raise StandardError, "El formato del string es incorrecto" if /\W/ === string 

    begin
        string.chars.map { |c| "#{c * get_code(c)}" }.join

        rescue ArgumentError 
            puts "Ingresaste el string 0!"
    end
end



# "A".ord => returns 65, the numeric code for "A", which is what the alphabet starts at.

# If you want it to start at 1 you could just subtract 64:

def get_code(c)
  c.upcase.ord - 'A'.ord + 1
end

# which works like:

# get_code('A') # 1
# get_code('B') # 2
# get_code('C') # 3