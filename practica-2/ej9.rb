=begin 
¿Qué diferencia hay entre el uso de include y extend a la hora de incorporar un módulo en una clase?
	i. Si quisieras usar un módulo para agregar métodos de instancia a una clase, ¿qué forma usarías a la hora de incluirlo en la clase?
	ii. Si en cambio quisieras usar un módulo para agregar métodos de clase, ¿qué forma usarías a la hora de incluir el módulo en la clase?

# Extend puede ser usado en una clase o en un objeto, agregandole al caller los metodos comunes del modulo. Si lo llama una clase se agregan como metodos de clase. Si lo llama un objeto como metodos de instancia.

# Include agrega una referencia al módulo que agregará nuevos métodos a nuestra clase que lo invoca como metodos de instancia. Si modificamos el módulo durante la ejecución del programa, todas las clases que incluían el módulo tomarán los cambios automáticamente.

# 1. Si quisiera usar un módulo para agregar métodos de instancia a una clase, usaria un include en la definicion de la clase.
# 2. Si en cambio quisiera usar un módulo para agregar sus metodos comunes como métodos de clase, usaria clase.extend(modulo)

# NOTA IMPORTANTE: arriba estamos hablando de los metodos "de instancia" de los modulos,
# que se definen con def. Si el modulo tuviera metodos "de clase", precedidos por la palabra clave "self"
# estos solamente podrian ser accedidos a través del modulo (Modulo.metodoDeClase); es decir, no
# no pueden ser incorporados a ninguna clase.

=end