# Alineamiento con Muscle
muscle -in ../Data/COI_Astyanax.fasta -out ../Data/COI_Astyanax_aligned.fasta
# Filogenia con IQ-TREE
iqtree -s ../Data/COI_Astyanax_aligned.fasta -m MFP -bb 1000 -nt AUTO -pre ../Results/COI_Astyanax

