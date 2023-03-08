# Usando R

## Iniciando R

R tiene su propio REPL ([Read-eval-print loop](https://en.wikipedia.org/wiki/Read–eval–print_loop)) interactivo y aquí es donde muchos usuarios de R en Linux comenzarán.

Hay dos formas de iniciar R. Si estás utilizando el escritorio del sistema operativo Raspberry Pi, puedes iniciar R a través del menú como se muestra a continuación.

![Elemento de menú R4Pi en Raspberry PI OS](/docs/images/r4pi_menu.png)

Alternativamente, puedes iniciar una sesión R interactiva a través de la terminal, escribiendo `R` en el símbolo del sistema.

```bash
sellorm@raspberrypi $ R

R version 4.2.2 (2022-10-31) -- "Innocent and Trusting"
Copyright (C) 2022 The R Foundation for Statistical Computing
Platform: aarch64-unknown-linux-gnu (64-bit)

R es un software libre y viene sin GARANTIA ALGUNA.
Usted puede redistribuirlo bajo ciertas circunstancias.
Escriba 'license()' o 'licence()' para detalles de distribucion.

R es un proyecto colaborativo con muchos contribuyentes.
Escriba 'contributors()' para obtener más información y
'citation()' para saber cómo citar R o paquetes de R en publicaciones.

Escriba 'demo()' para demostraciones, 'help()' para el sistema on-line de ayuda,
o 'help.start()' para abrir el sistema de ayuda HTML con su navegador.
Escriba 'q()' para salir de R.

> 
```

R se inicia con mensajes sobre la versión y la licencia, etc.

En este punto, estás ejecutando R y puedes comenzar a hacer todo tipo de cosas divertidas.

Comencemos con un par de conceptos básicos.

## Lo básico

Una nota rápida sobre convenciones: A lo largo de esta página, verás los comandos R que debes escribir precedidos por el símbolo `>`. Este es el "símbolo del sistema" predeterminado de R. No necesitas escribir eso, solo todo lo que lo sigue.

Probemos algo de matemáticas. Escribe lo siguiente y presiona 'enter':

```R
> 3192 / 76
```

**Nota:** R, como la mayoría de lenguajes de programación, usa `/` para la división y `*` para la multiplicación.

R debería retornar:

```R
[1] 42
```

No te preocupes demasiado por el `[1]` por ahora, esa es solo la forma en que R dice que es el primer resultado. Como aprenderás más adelante, podemos devolver muchos resultados a la vez y saber en qué posición están las cosas, es más útil entonces.

Ahora probemos con texto...

Vamos a asignar una variable. Una variable es una forma de guardar algo para más tarde. Esto podría ser un número o algún texto, o cualquiera de una serie de cosas.

```R
> mi_nombre <- "sellorm"
```

R parecerá que no ha hecho nada y te regresará directamente al símbolo `>`. Asignar una variable es una operación silenciosa, por lo que R no se molesta en decirnos nada cuando todo va según lo planeado.

Puedes ver qué valor tiene nuestra variable escribiendo su nombre y presionando enter:

```R
> mi_nombre
```

Esto retornará:

```R
[1] "sellorm"
```

(¡Ahí está ese `[1]` otra vez!)

Usemos la variable en otro comando. Prueba esto:

```R
> cat("Hola", mi_nombre, "\n")
```

Esto debería imprimir lo siguiente en la pantalla:

```R
Hola sellorm
```

El comando `cat` es la función 'concatenar' integrada de R, pero a menudo se usa para generar mensajes simples como este.

Con suerte, el contenido del comando que ejecutaste tiene sentido -- uniendo la palabra "Hola" con el nombre que almacenó anteriormente -- pero puede que te estés preguntando sobre el "\n" al final. Esto le dice a R que imprima una "nueva línea". Sin ella, el mensaje todavía se imprimiría, pero nuestro símbolo del sistema seguiría directamente al resultado.

Inténtalo:

```R
> cat("Hola", mi_nombre)
Hola sellorm>
```

¿Ves cómo el símbolo de sistema ahora está atascado al final del resultado? Esto no es un problema, solo se ve desordenado y hace que sea más difícil ver dónde estás.

Por último (¡por ahora!), puedes ejecutar un par de demostraciones integradas de R.

Prueba esta primero:

```R
> demo(graphics)
```

Esta demostración abrirá otra ventana y mostrará algunos gráficos preestablecidos creados con las herramientas de trazado integradas. R tiene un sistema de gráficos realmente potente y las herramientas de trazado integradas son geniales, sin embargo, si deseas llevar tus gráficos al siguiente nivel, consulta el paquete '[ggplot2](https://ggplot2.tidyverse.org)'.

![](/images/using_r_demo_screenshot.png)

Para recorrer los gráficos de demostración, asegúrate de que la ventana de la terminal tenga el foco y presiona enter.

Cuando no se muestran más gráficos y tienes un montón de `>` apilados en el REPL, sabes que llegó al final de la demostración. Ahora puedes cerrar las ventanas de gráficos que se abrieron.

A continuación, prueba con este:

```R
demo(image)
```

Nuevamente, presiona enter para ver el siguiente ejemplo. El código para cada ejemplo también se muestra en el REPL, por lo que puedes comenzar a tener una idea de cómo podrías comenzar a crear tus propios gráficos.

Ahora que has jugado un poco en R, puede salir del REPL.

La forma oficial de hacer esto es con la función `quit()`, pero los desarrolladores de R nos han dado un práctico alias, `q()`, para usar en su lugar.

```R
> q()
Save workspace image? [y/n/c]: n
```

Cuando ejecutes `q()`, R te preguntará si deseas guardar tu "área de trabajo". El espacio de trabajo contiene todas las variables que has creado y los paquetes que has cargado. Por lo general, se considera una mala práctica guardar el espacio de trabajo, ya que puede causarnos problemas más adelante, por lo que siempre debes responder con "n".

Eventualmente, incluso esto puede parecer demasiado tecleado y alguien señalará que puedes lograr lo mismo presionando "ctrl + d" dos veces, así que siéntete libre de hacerlo si lo prefieres.
