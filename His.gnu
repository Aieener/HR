set terminal png
set term png truecolor
set output "Histogram.png"
set title "Histogram"
set xlabel "Ni"
set ylabel "P(Ni)"
binwidth=10
bin(x,width)=width*floor(x/width)
set style fill transparent solid 0.3333 border -1

plot 'dataplot.dat' using (bin($3,binwidth)):(0.001) smooth freq with boxes title "Nv",'dataplot.dat' using (bin($4,binwidth)):(0.001) smooth freq with boxes title "Nh"
