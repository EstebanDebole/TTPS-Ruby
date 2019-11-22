=begin
Utilizando Sinatra, desarrollá una aplicación web que tenga los siguientes *endpoints*:
   - `GET /` lista todos los endpoints disponibles (sirve a modo de documentación)
   - `GET /mcm/:a/:b` calcula y presenta el mínimo común múltiplo de los valores numéricos `:a` y `:b`
   - `GET /mcd/:a/:b` calcula y presenta el máximo común divisor de los valores numéricos `:a` y `:b`
   - `GET /sum/*` calcula la sumatoria de todos los valores numéricos recibidos como parámetro en el *splat*
   - `GET /even/*` presenta la cantidad de números pares que hay entre los valores numéricos recibidos como parámetro en
     el *splat*
   - `POST /random` presenta un número al azar
	- `POST /random/:lower/:upper` presenta un número al azar entre `:lower` y `:upper` (dos valores numéricos) 
=end

Bundler.require

get "/" do
	body = []
	Sinatra::Application.each_route do |route|
		body.push("#{route.verb} #{route.path}<br>")
	end
	[200, {}, body]
end

get "/mcm/:a/:b" do |a, b|
	[200, {}, [a.to_i.lcm(b.to_i).to_s]]
end

get "/mcd/:a/:b" do |a, b|
	[200, {}, [a.to_i.gcd(b.to_i).to_s]]
end

get "/sum/*" do |args|
	[200, {}, [args.split("/").inject(0) {|sum, each| sum + each.to_i}.to_s]]
end

get "/even/*" do |args|
	[200, {}, [args.split("/").select {|n| n.to_i.even?}.size.to_s]]
end

post "/random" do
	[200, {}, [rand.to_s]]
end

post "/random/:lower/:upper" do |lower, upper|
	[200, {}, [Random.rand(lower.to_i..upper.to_i).to_s]]
end