#!/bin/bash
makeblastdb -in /home/daniel/Desktop/blast/mystery_transcripts.fasta -dbtype nucl -out /home/daniel/Desktop/blast/mystery_transcripts_db
makeblastdb -in /home/daniel/Desktop/blast/mystery_proteins.fasta -dbtype prot -out /home/daniel/Desktop/blast/mystery_proteins_db
blastn -db /home/daniel/Desktop/blast/mystery_transcripts_db -query /home/daniel/Desktop/blast/mystery_nucleotide_query.fasta -outfmt 7 -out /home/daniel/Desktop/blast/nucleotide_results.out -evalue 1e-3 -max_hsps 5
sort -nrk3 nucleotide_results.out | head -5 | sed -n 1p
awk '$3 > 90' nucleotide_results.out > most_similar.txt
blastp -db /home/daniel/Desktop/blast/mystery_proteins_db -query /home/daniel/Desktop/blast/mystery_protein_query.fasta -outfmt 7 -out /home/daniel/Desktop/blast/protein_results.out -evalue 1e-5 -max_hsps 15
sort -nk11 protein_results.out | tail -n +6 | awk '{if($11<=0)print $2}'
echo Coffea_arabica
echo Gardenia_jasminoides
echo catalase
