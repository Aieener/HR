#set terminal png
#set output "ZvsBetamiu.png"
set title "Z vs Betamiu"
set xlabel "Z"
set ylabel " Betamiu"
plot "dataNvsZ.dat" using 1:6 with lines title "Betamiu","dataNvsZ.dat" using 1:7 with lines title"CBetamiu"