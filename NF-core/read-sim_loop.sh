genomes=/home/lhuet/uce_assembly_project/read-sim/genomes

for filename in $genomes/*fasta;
do
readsdir=/home/lhuet/uce_assembly_project/read-sim/reads
sample=$(basename "$filename" .fasta)
nextflow run nf-core/readsimulator -r dev -profile docker -c custom.config -params-file nf-params.json --fasta $filename --outdir $readsdir/${sample}
done
