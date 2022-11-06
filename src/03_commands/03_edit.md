# EDIT.EXE

<div style="padding: 1rem">
  <img src="images/edit.png" />
</div>

El programa `EDIT.EXE` es un editor de texto, util para el desarrollo de
programas en Assembly dentro de DOSBox.

Para editar un archivo o crear uno nuevo se debe ejecutar `EDIT.EXE`, pasando
el nombre del archivo como parámetro.

```
edit <filename>.asm
```

<div style="padding: 1rem">
  <img src="images/edit_filename.png" />
</div>

Desarrolla el código en assembler:

<div style="padding: 1rem">
  <img src="images/edit_develop.png" />
</div>

Guarda el archivo, usa el cursor para abrir el menú de archivo en la parte
superior y luego presiona click en la opción `Save As`, finalmente presiona `Ok`.

<div style="padding: 1rem">
  <img src="images/edit_savefile.png" />
</div>

Luego vuelve a abrir el menú `File` y selecciona `Exit`.
Ahora debemos compilar el archivo Assembler, para ello usamos el ejecutable
`tasm` de la siguiente forma:

```
tasm /l /zi <filename>.asm
```

<div style="padding: 1rem">
  <img src="images/edit_tasm.png" />
</div>


