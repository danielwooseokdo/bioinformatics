#!/bin/bash
sed '/zoo/Id' pandas.csv > panda_zoos.txt
cd /home/daniel/Desktop
awk -F ',' '{print $1,$4,$2}' panda_zoos.txt | sort -k3 -o  sorted_pandas.txt
awk -F ',' '{print $5}' pandas.csv | sort -u -o panda_zoos_A2Z.txt
sed -e 's/female/F/;s/male/M/' pandas.csv > panda_m_f.txt
grep "October" pandas.csv | grep -c "female"
grep -n ',' pandas.csv > panda_names.txt
sed -n '1p;6p;17p' panda_names.txt > lines_1_6_17.txt
grep -i 'x' panda_names.txt > x_lines.txt
awk -F ',' '{print $5}' pandas.csv | uniq -u > unique_places.txt
sort -t ',' -k4 -n pandas.csv | awk -F ',' '{if($4<11)print $1,$4}' > young_pandas.txt