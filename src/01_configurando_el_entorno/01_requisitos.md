# Configurando el Entorno

Los programas que se muestran en este libro asi como los ejemplos en el
directorio `examples`, se elaboran en el emulador [DOSBox][1].

## Requisitos

- Instalador DOSBox
- Borland Turbo Assembler 5.0 (TASM)

## Instalación

Los procedimientos de instalación pueden variar dependiendo del sistema
operativo. Vista la pagina oficial de [DOSBox Downloads][2] para descargar
instaladores oficiales.

### macOS

1. [Descarga el instalador][2]
2. Abre el DMG descargado y copia el archivo DOSBox a tu directorio "Aplicaciones".

<img src="images/01/001.png" />

3. Crea un directorio `DOSDrive`, que servira como disco a montar en DOSBox.
Este directorio nos permitirá agregar ejecutables obtenidos de internet para
utilizar dentro de DOSBox.

Si usas la terminal, puedes ejecutar el siguiente comando para crear el
directorio:

```bash
mkdir ~/DOSDrive
```

Si usas "Finder", abre la carpeta "Inicio" usando el menu contextual en la
parte superior `"Ir" > "Inicio"`. Y crea un directorio con el nombre `DOSDrive`.

4. Copia el ejecutable `TASM` al directorio `DOSDrive` en tu directorio de `Inicio`,
así como cualquier otro binario ejecutable de tu interés.

5. Ejecuta DOSBox y monta el directorio `~/DOSDrive` creado en el paso 3 usando
el siguiente programa.

```bash
MOUNT C ~/DOSDrive
```

> El comando `MOUNT` toma como primer parámetro el nombre del disco a montar,
> en este caso es C. Y como segundo parámetro la dirección del directorio a
> montar.

<img src="images/01/002.png" />

La ejecución de este comando habilitará un archivo de configuración dentro del
directorio `~/Library/Preferences`.

6. Modifica el archivo de preferencias de DOSBox para que el comando MOUNT se
ejecute automáticamente al abrir DOSBox.

Abre el directorio `~/Library/Preferences` usando el terminal o Finder y
abre el archivo: `DOSBox 0.74 Preferences` con tu editor de texto favorito,
si no tienes uno puedes usar `TextEdit` en su lugar.

> El nombre del archivo puede variar según la versión de DOSBox instalada.

Al final del archivo se encuentra la seccion `AUTOEXEC`, esta sección nos
permite agregar comandos a ejecutar al abrir el emulador.

```toml
[autoexec]
# Lines in this section will be run at startup.
# You can put your MOUNT lines here.
```

Agrega el comando `MOUNT` utilizado en el paso 5 a esta sección para que se
ejecute al abrir DOSBox.

```toml
[autoexec]
# Lines in this section will be run at startup.
# You can put your MOUNT lines here.
MOUNT C ~/DOSDrive
```

## Linux

TBD

## Windows

TBD

[1]: https://www.dosbox.com
[2]: https://www.dosbox.com/download.php?main=1
