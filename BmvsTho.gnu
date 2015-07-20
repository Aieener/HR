#set terminal png
#set output "BetamiuvsTho.png"
set title "Betamiu vs Tho"
set ylabel "Tho"
set xlabel " Betamiu"
plot "dataNvsZ.dat" using 6:4 with lines title "Tho","dataNvsZ.dat" using 7:4 with lines title"CTho"