
# Cargar módulos (solo en Hoffman)
module load muscle
module load iqtree/2.2.2.6

echo "📥 Descargando COI mitocondrial de 5 especies de Astyanax desde NCBI..."
mkdir -p Data Results

# 5 especies específicas
esearch -db nucleotide -query "Astyanax mexicanus[Organism] AND COI[Gene] AND mitochondrion" | \
efetch -format fasta > Data/A_mexicanus.fasta

esearch -db nucleotide -query "Astyanax altiparanae[Organism] AND COI[Gene] AND mitochondrion" | \
efetch -format fasta > Data/A_altiparanae.fasta

esearch -db nucleotide -query "Astyanax lacustris[Organism] AND COI[Gene] AND mitochondrion" | \
efetch -format fasta > Data/A_lacustris.fasta

esearch -db nucleotide -query "Astyanax altior[Organism] AND COI[Gene] AND mitochondrion" | \
efetch -format fasta > Data/A_altior.fasta

esearch -db nucleotide -query "Astyanax bacalarensis[Organism] AND COI[Gene] AND mitochondrion" | \
efetch -format fasta > Data/A_bacalarensis.fasta

echo "📥 Descargando grupo externo (Brycon amazonicus)..."

esearch -db nucleotide -query "Brycon amazonicus[Organism] AND COI[Gene] AND mitochondrion" | \
efetch -format fasta > Data/Brycon_raw.fasta

# Normalizar el encabezado del outgroup
echo ">Brycon_amazonicus" > Data/Brycon_amazonicus.fasta
grep -v "^>" Data/Brycon_raw.fasta >> Data/Brycon_amazonicus.fasta
rm Data/Brycon_raw.fasta

echo "🧬 Uniendo todas las secuencias..."
cat Data/A_*.fasta Data/Brycon_amazonicus.fasta > Data/COI_Astyanax_total.fasta

echo "🔬 Alineando con MUSCLE..."
muscle -in Data/COI_Astyanax_total.fasta -out Data/COI_aligned.fasta

echo "🌳 Construyendo árbol enraizado con IQ-TREE..."
iqtree2 -s Data/COI_aligned.fasta -nt AUTO -bb 1000 -pre Results/COI_tree_rooted -o Brycon_amazonicus

echo "✅ Árbol enraizado generado en Results/COI_tree_rooted.treefile"


