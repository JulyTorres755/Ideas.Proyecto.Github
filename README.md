# Ideas.proyecto.Github
## Filogenia multigénica del género Astyanax usando herramientas bioinformáticas
## Propósito del programa
* Este proyecto busca reconstruir un árbol filogenético del género Astyanax, un grupo diverso de peces tetras, mediante el análisis de múltiples genes obtenidos de bases de datos públicas. El objetivo es entender sus relaciones evolutivas y patrones de divergencia.
## Herramientas utilizadas.
* MUSCLE:Para alinear las secuencias genéticas.
* IQ-TREE: Para generar árboles filogenéticos
* ASTRAL
* FigTree
## Requisitos para ejecutar el programa
* MUSCLE,IQ-TREE,ASTRAL,FigTree
## Cómo usar el programa
* Copiar los archivos de genes a nuestra carpeta
* Convertir archivos de formato Phylip a Fasta
* Alinear secuencias usando MUSCLE for gene in *.fasta ; do ./muscle3.8.31_i86linux64 -in $gene -out muscle_$gene -maxiters 1 -diags ; done
* Construir árboles filogenéticos con IQ-TREE module load iqtree/2.2.2.6
* Construir el árbol especie con ASTRAL java -jar /ruta/a/astral.5.7.8.jar -i Alltrees.Astyanax.treefile -o Astral.Astyanax.tree
* Abre el programa FigTree.
* Carga el archivo Astral.tree

![Pez del género Astyanax](https://www.pezeraacuario.com/wp-content/uploads/2023/04/Tetra-monjita-neon.jpg)

