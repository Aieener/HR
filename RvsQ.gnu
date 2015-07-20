set terminal png
set term png truecolor
set output "RvsQ.png"
set title "RUNS vs Q"
set xlabel "RUNS"
set ylabel "Q"
plot "dataplot.dat" using 1:2 with lines title "Q"
