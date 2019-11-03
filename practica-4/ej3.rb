## ¿Dónde instalan las gemas los comandos `gem` y `bundle`?
## 	> Tip: `gem which` y `bundle show`.

## `gem` instala las gemas dentro de un directorio correspondiente a una versión de ruby, lo que me da a entender que para cada versión de ruby, tiene su propio conjunto de gemas. Dentro del directorio de la versión, a su vez, puede ubicar la gema en dos lugares distintos (dependiendo de **andá a saber qué**):


=begin
* `lib/ruby/x.y.z` (supongo que es uno de los directorios importantes)
* `lib/ruby/gems/x.y.z/gems/#{gem_name}/lib`

Ejemplos:


~/.rbenv/versions/2.2.3/lib/ruby/2.2.0/x86_64-darwin13/bigdecimal.bundle
~/.rbenv/versions/2.2.3/lib/ruby/gems/2.2.0/gems/bundler-1.10.6/lib/bundler.rb
~/.rbenv/versions/2.2.3/lib/ruby/2.2.0/json.rb
~/.rbenv/versions/2.2.3/lib/ruby/gems/2.2.0/gems/minitest-5.4.3/lib/minitest.rb
~/.rbenv/versions/2.2.3/lib/ruby/gems/2.2.0/gems/power_assert-0.2.2/lib/power_assert.rb
~/.rbenv/versions/2.2.3/lib/ruby/2.2.0/psych.rb
~/.rbenv/versions/2.2.3/lib/ruby/2.2.0/rake.rb
~/.rbenv/versions/2.2.3/lib/ruby/2.2.0/rdoc.rb
~/.rbenv/versions/2.2.3/lib/ruby/gems/2.2.0/gems/test-unit-3.0.8/lib/test-unit.rb
=end

### ¿Dónde instala las gemas Bundler?

## Entiendo que Bundler gestiona las dependencias, linkeando apps a gemas, por lo que me imagino que las gemas estarán instaladas en el mismo lugar de siempre. Lo verificaré cuando esté dentro de algún proyecto con bundler.