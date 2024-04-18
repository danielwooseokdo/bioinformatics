#!/bin/bash
echo "This script can count the number of sequences in a fasta file."
greeting="Hello"
your_name="Daniel"
echo "$greeting""$your_name"!
mkdir /home/daniel/Desktop/bioinformatics
mkdir /home/daniel/Desktop/bioinformatics/learning_bash
mv transcriptome.fasta /home/daniel/Desktop/bioinformatics/learning_bash
cd /home/daniel/Desktop/bioinformatics/learning_bash
grep -c ">" transcriptome.fasta > "fasta_count.txt"
