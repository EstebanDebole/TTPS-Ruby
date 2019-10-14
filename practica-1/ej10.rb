#!/usr/bin/ruby
=begin
Escribí una función llamada a_ul que reciba un Hash y retorne un String con los pares de
clave/valor del hash formateados en una lista HTML <ul>. Por ejemplo:"
# => "<ul><li>perros: 1</li><li>gatos: 1</li><li>peces: 0</li></ul>
=end
def a_ul (hash)
   ul = "<ul>"
   hash.collect {|key, value| ul << "<li>#{key}: #{value}</li>"}
   ul << "</ul>"
end

p a_ul({ perros: 1, gatos: 1, peces: 0})