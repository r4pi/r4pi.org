# Usando un entorno de desarrollo integrado (IDE)

## ¿Qué es un IDE?

Un IDE o "Entorno de desarrollo integrado" (por sus siglas en ingles) es un tipo especial de editor de texto, dirigido específicamente a la programación informática.

En principio, puedes escribir código en cualquier cosa que guarde texto sin formato, sin embargo, un IDE generalmente ofrecerá al programador características útiles como resaltado de sintaxis y una forma de ejecutar código desde un archivo de código fuente una línea a la vez.

Entonces, un IDE te hará más productivo como desarrollador. ¿Cómo consigues uno?

!!! info "Usando el IDE RStudio"
    Sabemos que muchos usuarios preferirían usar el IDE RStudio de Posit.
    Somos conscientes de que Posit está trabajando en compilaciones compatibles con Arm64 y documentaremos el proceso de instalación tan pronto como esté disponible una versión formal.
    Mientras tanto, si estás utilizando el sistema operativo Raspberry Pi de 64 bits y te gustaría probar RStudio en el Pi tú mismo, encontrarás las compilaciones diarias en el [sitio RStudio Dailies](https://dailies.rstudio.com/).

## Instalando VSCode

Microsoft puso a disposición recientemente el excelente IDE [Visual Studio Code](https://code.visualstudio.com) (también conocido como VSCode) para Raspberry Pi. No sirve de mucho para escribir R de fábrica, pero podemos instalar un complemento para solucionarlo.

Puedes instalarlo desde los repositorios predeterminados de Raspberry Pi usando la aplicación "Agregar o quitar software".

Busca "código" o encuéntralo en la sección "Programación".

![Agregar/Remover programas](../../assets/images/docs/add-remove-software.png)

Una vez que VSCode está instalado, debemos configurarlo para usarlo con R.

## Configurando VSCode para R

Para usar VSCode con R, debes instalar un complemento. En este momento, recomendamos el excelente complemento "R" del equipo "REditorSupport".

Si estás interesado, encontrarás los repositorios de código para el trabajo de este grupo [en GitHub](https://github.com/REditorSupport).

Para instalarlo, sigue estos pasos:

* Abre VSCode
* Haz clic el botón "Extensiones" a la izquierda
* Busca "R"
* Selecciona la extensión "R" por REditorSupport
* Haz clic en el botón "instalar"

![Instala el complemento R para VSCode](../../assets/images/docs/vscode-r-extension.png)

Una vez que el complemento esté instalado, estarás listo para comenzar a utilizarlo.

## Usando VSCode para escribir R

Ahora que el complemento está instalado, VSCode resaltará automáticamente la sintaxis de los archivos que tienen la extensión ".R".
Además, si colocas el cursor en una línea particular en un archivo R y presionas ctrl+enter, esa línea se ejecutará en una consola R y el cursor se moverá a la siguiente línea. Puedes usar esto para recorrer un archivo una línea a la vez.

![Resaltado de sintaxis y un gráfico creado en VSCode](../../assets/images/docs/r4pi-vscode-penguins.png)

Puedes leer más sobre las características del complemento R en la página "Detalles" de la extensión en VSCode.
