# Instalación

## Prerrequisitos

Debes estar ejecutando el [Sistema Operativo Raspberry Pi](https://www.raspberrypi.org/software/operating-systems/) oficial (anteriormente llamado Raspbian) o Ubuntu 24.04 (Noble Numbat) en tu sistema y debe estar actualizado.

Técnicamente, el software debería funcionar en todas las versiones de Pi, sin embargo, debido a limitaciones de memoria con versiones anteriores y la Pi Zero, **recomendamos una Raspberry Pi 4 con 2GB o más** de RAM.

Puedes consultar tu modelo de Raspberry Pi en una terminal con:

```bash
cat /sys/firmware/devicetree/base/model;echo
```

Por supuesto, puedes ejecutar el software en cualquier Raspberry Pi, pero debes esperar un rendimiento deficiente en los sistemas con poca memoria.

## Acerca de la compilación R de r4pi

Nuestra compilación de R sigue la versión de "lanzamiento" actual del [Proyecto R](https://r-project.org).

Esta es esencialmente la última versión de R disponible

## Configurando las cosas

Antes de poder instalar la compilación r4pi de R, debe configurar el acceso al repositorio de software r4pi.org.

```bash
source /etc/os-release
curl -O  https://pkgs.r4pi.org/dl/${VERSION_CODENAME}/r4pi-repo-conf_0.0.1-1_all.deb
sudo dpkg -i  r4pi-repo-conf_0.0.1-1_all.deb
sudo apt update
```

Ahora estás listo para instalar nuestra compilación de R

## Instalación del programa

Ahora que has configurado tu sistema, puedes continuar e instalar el software.

Primero actualiza todas tus fuentes:

```bash
sudo apt update
```

Deberías ver la nueva fuente r4pi.org en la salida de consola en alguna parte.

A continuación, instala las actualizaciones que estén disponibles, ten en cuenta que esto puede llevar algún tiempo.

```bash
sudo apt upgrade
```

Finalmente, instala la compilación r4pi de R.

```bash
sudo apt install r4pi
```

Suponiendo que todo salió bien, ahora estás listo para comenzar a usar R.

Puedes iniciar R ejecutando:

```bash
R
```

Teclea ctrl+d dos veces para salir.
