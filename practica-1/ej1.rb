#!/usr/bin/ruby
=begin
Investigá y probá en un intérprete de Ruby cómo crear objetos de los siguientes tipos básicos usando literales y usando el constructor new (cuando sea posible):

Arreglo (Array)
Diccionario o hash (Hash)
String (String)
Símbolo (Symbol)
=end
##ARRAYS

arr = [1, 2, 3, 4, 5, 6] #=> [1,2,3,4,5,6]
ary = Array.new    #=> []
Array.new(3)       #=> [nil, nil, nil]
Array.new(3, true) #=> [true, true, true]

Array.new(4) { Hash.new } #=> [{}, {}, {}, {}]

empty_table = Array.new(3) { Array.new(3) } #=> [[nil, nil, nil], [nil, nil, nil], [nil, nil, nil]]

#HASH

options = { font_size: 10, font_family: "Arial" }
options[:font_size]  # => 10
options = Hash.new #=> {}

#String

v1 = String.new("un Ejemplo") #=> "un Ejemplo"
v1 = "un Ejemplo" #=> "un Ejemplo"
"Hola " + "Mundo" #=> "Hola Mundo" "<< es igual a +"
"hello".capitalize #=> "Hello"
"HELLO".capitalize #=> "Hello"
"hEllO".downcase   #=> "hello"

#Symbol

No puede hacerse un new.
:ejemplo #=> declaracion

Las cadenas se utilizan para trabajar con datos .

Los símbolos son identificadores .
Los símbolos son inmutables
Los símbolos no apuntan a valores, son valores en sí mismos
