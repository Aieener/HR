set terminal png
set output "ZvsN.png"
set title "Z vs N"
set xlabel "Z"
set ylabel "N"
plot "dataNvsZ.dat"  using 1:2 with lines title "NHni","dataNvsZ.dat" using 1:3 with lines title"NVni"

