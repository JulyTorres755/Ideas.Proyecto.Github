# Ideas.proyecto.Github
## Filogenia multigénica del género Astyanax usando herramientas bioinformáticas
## Propósito del programa
* Este proyecto busca reconstruir un árbol filogenético del género Astyanax, un grupo diverso de peces tetras, mediante el análisis de múltiples genes obtenidos de bases de datos públicas. El objetivo es entender sus relaciones evolutivas y patrones de divergencia.r un árbol filogenéti>
* El proyecto busca reconstruir la historia evolutiva y las relaciones filogenéticas entre cinco especies de Astyanax usando el gen mitocondrial COI (Cytochrome c oxidase subunit I). Este gen es un marcador común en estudios de genética de poblaciones y filogenia molecular debido a su variabilidad y disponibilidad en bases de datos públicas.
* Entender las relaciones evolutivas dentro del género Astyanax permite conocer patrones de diversificación, ayudar en la identificación y clasificación de especies, y contribuir a estudios de conservación y ecología evolutiva. El uso del gen COI es una aproximación inicial para construir filogenias accesibles y comparables.

## Herramientas utilizadas.
* Usar esearch para obtener secuencias.
* MUSCLE:Para alinear las secuencias genéticas.
* IQ-TREE: Para generar árboles filogenéticos
* FigTree: Visualizar y editar árboles filogenéticos
## Accede las carpetas del proyecto

- [Data/](./Data): contiene secuencias necesarias.
- [Scripts/](./Scripts): contiene el script para ejecutar IQ-TREE.
- [Results/](./Results): contiene el archivo `build_tree.sh` o el que termina en .treefile generado por IQ-TREE.

## Requisitos para ejecutar el programa
* MUSCLE,IQ-TREE,FigTree
## Cómo usar el programa
* Verifica que el archivo COI_Astyanax.fasta está en la carpeta Data/
* cd Scripts
* chmod +x build_tree.sh
* ./build_tree.sh
* El archivo del árbol resultante se guardará en la carpeta Results/ (por ejemplo, COI_Astyanax.nwk)
* Abre ese archivo con FigTree u otro visualizador compatible para explorar el árbol


![Pez del género Astyanax](https://www.pezeraacuario.com/wp-content/uploads/2023/04/Tetra-monjita-neon.jpg)

