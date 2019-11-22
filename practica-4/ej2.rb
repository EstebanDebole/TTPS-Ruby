## ¿Cuáles son las principales diferencias entre el comando `gem` y Bundler? ¿Hacen lo mismo?
### `gem`

=begin

Es *el* gestor de gemas. Es un comando cuyos subcomandos permiten manipular gemas en nuestro sistema y/o proyecto.

Los subcomandos más frecuentemente utilizados son:

* `search some_gem`: búsqueda de gemas. `some_gem` puede ser una expresión regular.
	* `-r`/`--remote`: búsqueda en el repositorio remoto de RubyGems.org. *Default behavior*.
	* `-l`/`--local`: búsqueda en las gemas instaladas.
	* `-d`: información detallada sobre la gema.
* `install some_gem`: instala `some_gem` y sus dependencias.
* `require`: ...
* `list`: lista las gemas instaladas locamente.
* `uninstall some_gem`: desinstala `some_gem`; si la misma es dependencia de otra gema, pedirá confirmación.
* `server`: inicia un servidor web en la dirección http://localhost:8808, en el que se puede encontrar documentación de las gemas instaladas.
* `fetch`: descarga la gema (un paquete .gem) sin instalarla.
* `unpack`: extrae el contenido de una gema (.gem).

En el sitio RubyGems.org puede encontrarse la [lista completa de comandos](http://guides.rubygems.org/command-reference/#gem-update).

=end

=begin

### Bundler
Bundler es, así como `gem`, un gestor de gemas, pero, a diferencia de este, está orientado a proyectos y no al sistema en general, por lo que resulta correcto llamarlo *gestor de dependencias*. Su funcionamiento dentro de un proyecto es más o menos así:

* En la raiz del proyecto, se agrega un archivo `Gemfile` en el que se indican las gemas que este necesita junto con un rango de versiones aceptadas. Bundler provee un DSL para este, permitiendo diferentes opciones.
	* [Opciones del Gemfile](./extras/gemfile.md)
	* [gemfile webpage](http://bundler.io/v1.10/gemfile.html)
	* [gemfile man](http://bundler.io/v1.10/man/gemfile.5.html)
* El comando `bundle install` *resuelve* las dependencias especificadas en el `Gemfile`, *instala* las gemas necesarias y genera un archivo llamado `Gemfile.lock`.
	* La *resolución* de una dependencia consiste en determinar una gema y una versión compatibles, así como las gemas de las cuales depende la primera. O sea, se parte de una gema y un rango de versiones, y se obtienen N gemas con sus respectivas versiones. ~~Así, por ejemplo, la dependencia `gem 'nokogiri', '~> 1.6.1'` podría resolverse en la gema `nokogiri 1.7.2`, que es perfectamente compatible, y todas aquellas gemas de las que depende junto con sus versiones.~~
	* La *instalación* **PROBABLEMENTE** consiste en la obtención de la misma, ubicándola en algún directorio accesible para los proyectos, y linkeándola luego en el proyecto. Para aquellas gemas ya instaladas, la obtención no es necesaria.
	* En `Gemfile.lock` se especifican las dependencias resueltas. Si al momento de ejecutar `bundle install` existe un `Gemfile.lock`, se saltea la resolución y se procede con la instalación para todas aquellas dependencias que no hayan sido modificadas en el `Gemfile` luego de la creación del `Gemfile.lock`. Este archivo permite que en todos los repositorios en los que se corra `bundle install`, se instalen las mismas versiones de las gemas.
	* [bundle install man](http://bundler.io/v1.10/man/bundle-install.1.html)
* Una vez en la app, debemos requerir las gemas que vayamos a utilizar. Lo podemos hacer de a una, ejecutando, por ejemplo, `require 'rails'; require 'nokogiri'`, o todas al mismo tiempo, ejecutando `Bundler.require`.

Un *resumen* del proceso de utilización de Bundler puede encontrarse en la sección [Purpose and Rationale](http://bundler.io/rationale.html).

##### Yapa

El comando `bundle exec X` ejecuta el script X en el contexto del Bundler actual; es decir, el script correspondiente a la versión de la gema que contiene el proyecto actual.

=end