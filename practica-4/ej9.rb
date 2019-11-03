#!/usr/bin/ruby
## ¿Qué es Rack? ¿Qué define? ¿Qué requisitos impone?


**Rack** es una gema que permite comunicar *web servers* con *web applications*. Una mecánica de comunicación simple es más o menos así:

```
 ________         ________         _______ 
|        |       |        |       |       |
|  Web   |  ==>  |  Rack  |  ==>  |  App  |
| Server |       |        |       |       |
|________|       |________|       |_______|
```

* El **Web Server** recibe las peticiones de Internet y las envía a **Rack**.
* **Rack** procesa la petición acorde a cierta lógica encerrada en su archivo de configuración y la envía a una **Application**.
* La **Application** consiste en una clase ruby que entiende el mensaje `#call(env)` (`env` es un hash con el *environment*) y a partir del cual realiza el procesamiento correspondiente a la aplicación. Luego retorna una *response*, que consiste en un array con un *http status*, un hash de *http headers* y un array que corresponde al *body*.

La forma de conectar el **Web Server** con la **Application** es mediante el archivo `config.ru`, en el que a través de una *DSL* se especifica la lógica con la que **Rack** tratará las peticiones recibidas. Ejemplo:

> JSONServer es una webapp que retorna un JSON. Mediante el comando `run` se le envía el mensaje `#call(env)` con el respectivo argumento.

```ruby
class JSONServer
	def call(env)
		[ 200, {"Content-Type" => "applications/json"}, [%({ "message" : "Hello!"})]]
	end
end
```

```ruby
require "JSONServer"

map "/hello.json" do
	run JSONServer.new
end
```

Rack permite encadenar apps, quedando un flujo así:

```
 ________         ________         _________                   _________         _______ 
|        |       |        |       |         |                 |         |       |       |
|  Web   |  ==>  |  Rack  |  ==>  | Middle- |  ==>  ...  ==>  | Middle- |  ==>  |  App  |
| Server |       |        |       |   ware  |                 |   ware  |       |       |
|________|       |________|       |_________|                 |_________|       |_______|
```

Los *middlewares* son simplemente apps que definen un método `#initialize(app)` en el que se setea la variable de instancia `@app` con el arg `app`, que consiste en la siguiente app de la cadena. También, como todas las apps, definen el método `#call(env)`, pero, a diferencia de las apps primeramente descriptas, deben ocuparse de invocar a la siguiente en la cadena, y es por eso que la reciben. Ejemplo:

> `RackBenchmark` es una clase que loggea el tiempo que llevó atender la petición.

```ruby
class RackLogger
	def initialize(app)
		@app = app
	end
	
	def call(env)
		@start = Time.now
		@status, @headers, @body = @app.call(env)
		@duration = ((Time.now - @start).to_f * 1000).round(2)
		
		puts "#{env["REQUEST_METHOD"]} #{env["REQUEST_PATH"]} - Took: #{@duration} ms
		[@status, @headers, @body]
	end
end
```

```ruby
require "JSONServer"

use RackLogger

map "/hello.json" do
	run JSONServer.new
end
```

La directiva `use some_class` se encarga de tratar a `some_class` como si fuera un *middleware*, inicializándolo con `app` e invocándolo con `#call(env)`. En este caso, se especifica `RackBenchmark` como primer *middleware*. En la cadena de apps, a él le llega en `app` nuestra aplicación final `JSONServer`. Al servir una petición, se invocan todos los middlewares en el orden en el que fueron agregados mediante `use`.

**Duda 1**: supongo que hay ciertos middlewares default que son invocados antes que los del usuario. ¿Es correcto? ¿Se puede hacer que se invoquen primero los middleware propios?

**Duda 2**: ¿por qué en los ejemplos las variables `status, headers, body` son de instancia y no locales?

##### Fuentes
* [chneukirchen.org](http://chneukirchen.org/blog/archive/2007/02/introducing-rack.html)
* [southdesign.de](http://southdesign.de/blog/rack.html)
* [guides.rubyonrails.org](http://guides.rubyonrails.org/rails_on_rack.html#resources)