# Instalando paquetes

## Descripción general

En el mundo R, los paquetes complementarios que brindan funciones útiles o amplían el lenguaje de alguna manera provienen de [CRAN](https://cran.r-project.org). CRAN provee binarios precompilados de estos paquetes para usuarios de Mac y Windows, pero los usuarios de Linux (¡como nosotros!) solo obtienen el código fuente.

Esto tiene sentido ya que hay una gran cantidad de distribuciones de Linux y no es factible compilar archivos binarios para todas ellas. El código fuente es el predeterminado para todos los sistemas operativos Linux, pero también puede ser difícil trabajar con él. Como usuario final, tener que compilar paquetes desde la fuente puede llevar mucho tiempo y los paquetes a menudo también requieren dependencias específicas del sistema en tiempo de compilación que debes asegurar de que estén instaladas antes de intentar compilar el paquete.

## Cómo ayuda R4Pi

Para facilitar este proceso, el proyecto R4Pi ejecuta su propio repositorio CRAN que solo contiene un pequeño subconjunto de algunos de los paquetes más populares disponibles en el CRAN público. Dado que sabemos exactamente qué versión de Linux usarás, podemos compilar paquetes para ti, ¡haciendo que la instalación sea más simple y mucho más rápida!

Puedes ver una lista de los paquetes precompilados que están disponibles a través del proyecto en la [lista de paquetes R4Pi](https://pkgs.r4pi.org). De vez en cuando se agregan paquetes adicionales al proyecto, pero si tienes una necesidad específica, puedes [presentar una propuesta](https://github.com/r4pi/pkg_builder/issues) en el proyecto de GitHub e intentaremos satisfacer tu solicitud.

## Instalación

Puede ver el repositorio predeterminado ejecutando lo siguiente en R:

```R
> options("repos")
```

Los paquetes se instalan como de costumbre usando, por ejemplo:

```R
> install.packages("tidyverse")
```

## Instalando otros paquetes

Si necesitas instalar un paquete que no está disponible en nuestro repositorio, aún puedes usar CRAN público, ya sea agregándolo a la lista de repositorios disponibles o especificando de dónde debe provenir un paquete en particular, así:

```R
> install.packages(<PACKAGE_NAME>, repos = "https://cloud.r-project.org")
```
