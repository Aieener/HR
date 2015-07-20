set terminal png
set output "ZvsThoQ.png"
set title "Z vs Tho"
set xlabel "Z"
set ylabel "Tho_Q"
plot "dataNvsZ.dat" using 1:4 with lines title "Tho","dataNvsZ.dat" using 1:5 with lines title "Q"
