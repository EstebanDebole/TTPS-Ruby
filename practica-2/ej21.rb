21. ¿Qué son los _lazy enumerators_? ¿Qué ventajas les ves con respecto al uso de los enumeradores que no son _lazy_?

	> Tip: Analizalo pensando en conjuntos grandes de datos.
# Un lazy enumemrator solo ejecuta lo que necesita para devolver el resultado.
# Son enumeradores que calculan el siguiente valor cuando se lo piden.

# Tienen dos ventajas:
##		No necesitan efectuar operaciones sobre una colección entera, sólo sobre el valor actual.
##		Debido a lo anterior, sirven para trabajar con secuencias infinitas.

# link referencia: http://www.zenruby.info/2016/06/ruby-iterators-enumerators-enumerable.html