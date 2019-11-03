## Investigá un poco sobre *Semantic Versioning* (o *SemVer*). ¿Qué finalidad tiene? ¿Cómo se compone una versión? ¿Ante qué situaciones debería cambiarse cada una de sus partes?



=begin

Es un estándar de especificación y evolución de las versiones de productos de software. Surge como una reducción del problema denominado *dependency hell*.

Las dependencias pueden volverse una parte importante de las aplicaciones. Cuando una dependencia se actualiza, uno podría chequear que los cambios introducidos no resulten incompatibles con su proyecto. Si este tiene muchas dependencias, y hubiera que chequear cada una en cada actualización, o bien actualizar las dependencias y esperar que salga todo bien, o bien no actualizar, o bien actualizar sólo las dependencias que necesitamos que se actualicen, pero que también requerirían actualizar otras dependencias que tenemos, entonces deberíamos revisar estas también... Bien, eso es *dependency hell*, la situación en la que la gestión de las dependencias dificulta el avance del proyecto.

**Semantic Versioning** propone una sintáxis y semántica para la representación de versiones de aquellos productos de software que proveen una API pública: **X.Y.Z**. **X** es el dígito **major**, **Y** el dígito **minor** y **Z** el dígito **patch**, y se ven modificados de la siguiente manera:

* **Z**
	* *DEBE* incrementarse cuando:
		* Se introducen *bug fixes* compatibles con versiones anteriores. Por *bug fix* se entiende a modificaciones en el software que corrige comportamiento incorrecto.
* **Y**
	* *DEBE* incrementarse cuando:
		* Se introduce nueva funcionalidad compatible hacia atrás.
		* Se marcan como deprecados métodos de la API pública.
	* *PUEDE* incrementarse cuando:
		* Se agrega una cantidad notable de funcionalidad interna.
		* Se realiza una cantidad sustancial de mejoras internas.
	* *PUEDE* incluir:
		* *Patch level changes* (bug fixes).
	* Cuando es incrementado, **Z** *DEBE* resetearse a 0.
* **X**
	* *DEBE* incrementarse cuando:
		* Se introducen cambios en la API pública que no son compatibles hacia atrás.
	* *PUEDE* incluir:
		* *Minor y/o patch level changes*.
	* **Y** y **Z** *DEBEN* resetearse a 0 cuando es incrementado.

Así, la finalidad es que los números indiquen qué tipo de cambios se han introducido en el software, permitiendo comprender a partir de ellos la envergadura de la actualización, qué clase de modificaciones esperar, y cuál será la compatibilidad hacia atrás. 

##### Ejemplo

utilizando Semantic Versioning, mi aplicación *MyApp* podría especificar como dependencia a *AnotherApp* en su versión `2.4.0`. Suponiendo que utilizo métodos de la API pública de *AnotherApp* que fueron introducidos en la versión `2.4.0`, yo podría estar tranquilo de que mientras la versión que yo utilice sea ≥ `2.4.0` y < `3.0.0`, mi código funcionará, ya que todos los cambios introducidos serán compatibles hacia atrás.

La documentación detallada sobre cómo utilizar este sistema se encuentra en el sitio oficial [SemVer.org](http://semver.org/).

##### Yapa

Las aplicaciones suelen iniciarse en la versión `0.1.0`. Mientras la API es inestable y el software no es utilizado en producción, se puede mantener el *major version* en 0. Cuando la aplicación llega a producción, la API es estable con usuarios dependiendo de ella, o el durante el desarrollo se tiene mucho en cuenta la compatibilidad hacia atrás, el *major version* debería ser > `0`.


=end