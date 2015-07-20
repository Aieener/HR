set terminal png
set output "ThovsBetamiu.png"
set title "Tho vs Betamiu"
set xlabel "Tho"
set ylabel " Betamiu"
plot "dataNvsZ.dat" using 4:6 with lines title "Betamiu","dataNvsZ.dat" using 4:7 with lines title"CBetamiu"