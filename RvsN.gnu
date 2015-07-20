set terminal png
set term png truecolor
set output "RvsNi.png"
set title "RUNS vs Ni"
set xlabel "RUNS"
set ylabel "Ni"
plot "dataplot.dat" using 1:3 with lines title "NVni","dataplot.dat" using 1:4 with lines title"NHni"


