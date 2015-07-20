set terminal wxt
set title "Tho vs Miubeta"
set xlabel "Tho = N/M"
set ylabel "Miubeta"
plot "dataNvsZ.dat"  using 1:3 with lines title "miubeta","dataNvsZ.dat" using 1:4 with lines title "cmiubeta"