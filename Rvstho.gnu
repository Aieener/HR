#set terminal png
#set output "Rvstho.png"
set title "RUNS vs Density"
set xlabel "RUNS"
set ylabel "Density"
plot "dataplot.dat" using 1:5 with lines title "Density"

