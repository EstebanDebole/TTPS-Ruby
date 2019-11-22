#!/usr/bin/ruby
## Implementá una *app* llamada "MoL" de Rack que responda con un número al azar entre `1` y `42`, y que devuelva el *status* HTTP `200` sólo en caso que el número a devolver sea `42`, en cualquier otro caso debe retornar un *status* `404`.

require 'rack'

class MoL
    def self.call(env)
        num = rand(42)
        
        num == 42 ? code = 200 : code = 404

        [code, {}, [num.to_s]]
    end
end

Rack::Server.start :app => MoL


## rackup config.ru // Para leventar servidor racks