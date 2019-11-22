### Rack (rails lo utiliza)
Es una libreria que define un contrarto qe si lo respetamos podemos montar un servidor de aplicaciones ruby. 
Ver pagina oficial de rack para ver el contrato.


### Gemas
`bundle init`
`bundle install`
`bundle check`
`bundle info gem`
`bundle update`
`bundle exec ruby file.rb`
`bundle gem name`

### Sinatra

### TPI
reservo item, no producto\
una reserva puede crearse una venta
tokens con vencimiento 
error de 402 operacion no valida(validacion de formulario)


buscar gemas para estandar json:api (2 o 3 gemas)
mime string define que tipo de codificacion tiene un archivo  `file --mime-type file`

pd:buscar gemas para todo.

restricciones:
	ruby 2.6.0 >


### Rails
mailer  -> envia mails
pack view support -> gema base logica de controler, vista y simplifica uso de lenguaje
job -> procesar tareas en seg plano
model -> modelo logico en memroia
cable -> usar web sockets
storage -> upload archivos al server

text -> manejo de editor de texto
mailbox -> controlador de mails

#### ejemplo
rails new path `options`
no mail no upload no cable no text no active storage systemtest
si poner --api
bundle exec rails serve // levanta servidor
bundle exec rails db:create
rails -T // ver comandos
rails generate //gnerador de codigo
rails generate model User campo:tipo token:string token_created_at:timestamp

add_index :users, :token, :unique:true
rails console
reload!