#!/usr/bin/ruby
=begin
Dado un color expresado en notación RGB (https://es.wikipedia.org/wiki/RGB) , debés calcular
su representación entera y hexadecimal, donde la notación entera se define como red +
green*256 + blue*256*256 y la hexadecimal como el resultado de expresar en
hexadecimal el valor de cada color y concatenarlos en orden. Por ejemplo:
	notacion_hexadecimal([0, 128, 255])
	# => '#0080FF'
	notacion_entera([0, 128, 255])
	# => 16744448
=end
def notacion_entera(array)
	array.each_with_index.reduce(0) { |sum, (value, index)| sum + value * 256 ** index }
end
def notacion_hexadecimal(array)
	array.inject("#") { |sum, n| sum + "#{n.to_s(16)}"} 
end

p notacion_hexadecimal([0, 128, 255])
p notacion_entera([0, 128, 255])