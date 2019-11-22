#!/usr/bin/ruby
=begin
Utilizando el proyecto creado en el punto anterior como referencia, contestá las siguientes preguntas:
   1. ¿Qué finalidad tiene el archivo `Gemfile`?
   2. ¿Para qué sirve la directiva `source` del `Gemfile`? ¿Cuántas pueden haber en un mismo archivo?
   3. Acorde a cómo agregaste la gema `colorputs`, ¿qué versión se instaló de la misma? Si mañana se publicara la versión `7.3.2`, ¿esta se instalaría en tu proyecto? ¿Por qué? ¿Cómo podrías limitar esto y hacer que sólo se instalen *releases* de la gema en las que no cambie la *versión mayor* de la misma?
   4. ¿Qué ocurrió la primera vez que ejecutaste `prueba.rb`? ¿Por qué?
   5. ¿Qué cambió al ejecutar `bundle install`?
   6. ¿Qué diferencia hay entre `bundle install` y `bundle update`?
   7. ¿Qué ocurrió al ejecutar `prueba_dos.rb` de las distintas formas enunciadas? ¿Por qué? ¿Cómo modificarías el archivo `prueba_dos.rb` para que funcione correctamente?

=end

=begin
	1- En el archivo `Gemfile` se especifican las dependencias del proyecto, que serán *instaladas* (puede que ya se encuentren instaladas, en cuyo caso sólo serán linkeadas) al ejecutar `bundle exec`.
	2- Sirve para especificar de dónde obtener las gemas. Puede haber las que se quieran, la directiva `source` acepta bloques do end.
	3- Se instaló la versión `0.2.3`, que es la última ya que no se especificó otra cosa. Si ejecutara un `bundle update`, se instalaría la última versión de la gema, sea cual fuere; ya que no se determinaron rangos válidos para las versiones, se actualizará a la última que exista. Agregando el argumento `"~>0.y"` estaríamos especificando que se actualice la gema mientras que el major number se mantenga en 0.
	4-  Al ejecutar `ruby prueba.rb`, se intentó levantar la gema desde las gemas instaladas por `gem`. Como no se encontraba instalada, lanzó una excepción `LoadError`.
	Al ejecutar `bundle exec ruby prueba.rb`, se intentó levantar la gema que se encuentra *instalada* en el proyecto. Como no se ejecutó aún `bundle install`, la gema no se encuentra *instalada* en el proyecto y Bundler indica que no la encuentra. Y te recomienda su instalacion.
	5- `bundle install` resolvió las dependencias especificadas en `Gemfile`, determinando una versión para `colorputs`, instalándola si no se encontraba entre las gems y luego indicando que se debe usar esa versión de esa gema en el proyecto actual.
	6- 
	##### `bundle install`
	Este comando determina su operatoria a partir de la existencia del archivo `Gemfile.lock`.

	Si no existe, las dependencias especificadas en `Gemfile` deben ser resueltas: se toma una gema y las restricciones de rango de la versión, y se obtiene una versión concreta desde el `source`; esto se lleva a cabo para cada gema y sus dependencias. Luego en el archivo `Gemfile.lock` se almacena la versión de cada gema *concreta* obtenida.

	Si existe, significa que las dependencias en `Gemfile` ya han sido resueltas. Se procede entonces a instalar todas las gemas especificadas en `Gemfile.lock`.

	Si existe pero `Gemfile` ha sido modificado luego de la creación de este, se procede a resolver las gemas que han cambiado. Si se encuentra que una de ellas requiere la actualización de una gema que también es dependencia de otra gema, la resolución de dicha gema es abortada.

	##### `bundle update`
	Este comando ignora la existencia de un `Gemfile.lock` y resuelve todas las dependencias en `Gemfile`.

	Puede ser usado de forma tal de sólo actualizar una gema y sus dependencias. Por ejemplo, `bundle update nokogiri` actualizaría `nokogiri` y todas sus dependencias, sin importar si estas también son dependencia de otras gemas.

	##### Cuestión
	Un posible flujo de trabajo sería:

	1. Escribo el `Gemfile`
	2. Corro `bundle install`
	3. Hago alguna modificación sobre `Gemfile`
		4. **Duda**: esta modificación podría ser el cambio de una versión en una gema o la agregación de una nueva gema. En el segundo caso:
			5. ¿Podría generar conflicto `bundle install`?
			6. Si generara conflicto, ¿cuál sería la solución? (`bundle update` no parece el más indicado)
	4. Corro `bundle install`
	5. `bundle install` fracasa
	6. Actualizo a mano usando `bundle update some_gem` aquellas gemas que fracasaron

	7- Al ejecutarlo usando `ruby` lanzó una excepción ya que no conoce la constante `Bundler` (piensa que es una constante porque empieza con mayúscula según entiendo).

	Al ejecutarlo usando `bundle exec ruby` funcionó, lo que sugiere que de alguna forma Bundler se *hace conocer* en el contexto de ruby que lanza.

	Para que funcione correctamente de cualquier de las dos formas, debería agregar la sentencia `require "Bundler"` antes de utilizar `Bundler`.

	**Duda**: al agregar `require "Bundler"` comenzó a funcionar al correr con `ruby prueba_dos.rb` pero escupe un *warning* al correrlo con `bundle exec prueba_dos.rb`.

	1. ¿No hay que darle importancia?
	2. ¿No se suele correr ruby en el contexto de Bundler con `bundle exec`?

=end