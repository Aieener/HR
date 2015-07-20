set terminal wxt
set title "Tho vs Z"
set xlabel "Tho"
set ylabel "Z"
plot "dataplot.dat" using 1:2 with lines title "tho"