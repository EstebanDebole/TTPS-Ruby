#!/usr/bin/ruby
# ¿Cuáles son las diferencias entre los siguientes métodos?
def opcion_1
   a = [1, nil, 3, nil, 5, nil, 7, nil, 9, nil]
   b = 3
   c = a.map do |x|
      x * b
   end
   puts c.inspect
rescue
   0
end

# opcion_1 retorna 0 al levantar la excepcion NoMethodError al intentar nil * 3

def opcion_2
   c = begin
         a = [1, nil, 3, nil, 5, nil, 7, nil, 9, nil]
         b = 3
         a.map do |x|
            x * b
         end
      rescue
         0
      end
   puts c.inspect
end

# opcion_2 retorna nil e imprime 0. Esto se debe a que c queda con 0 por el rescue.

def opcion_3
   a = [1, nil, 3, nil, 5, nil, 7, nil, 9, nil]
   b = 3
   c = a.map { |x| x * b } rescue 0
   puts c.inspect
end

# opcion_3 retorna nil e imprime 0 al igual que el anterior

def opcion_4
   a = [1, nil, 3, nil, 5, nil, 7, nil, 9, nil]
   b = 3
   c = a.map { |x| x * b rescue 0 }
   puts c.inspect
end

# opcion_4 imprime [3, 0, 9, 0, 15, 0, 21, 0, 27, 0] y retorna nil.
#Como el rescue está dentro del bloque, se ejecutará para cada instrucción que levante una excepción, y la ejecución continuará sin problemas.

#La principal diferencia entre todos los metodos es la propagacion necesaria para ejecutar el rescue