=begin
Cada nuevo término en la secuencia de Fibonacci es generado sumando los 2 términos
anteriores. Los primeros 10 términos son: 1, 1, 2, 3, 5, 8, 13, 21, 34, 55. Considerando los
términos en la secuencia de Fibonacci cuyos valores no exceden los 4 millones,
encontrá la suma de los términos pares
=end
def fibonacci(max)
	i1, i2 = 1, 1
	while i1 <= max
		if i1.even?
			yield i1
		end
		i1, i2 = i2, i1+i2
	end
end
 
fibonacci(4000000) {|f| print f, " " }