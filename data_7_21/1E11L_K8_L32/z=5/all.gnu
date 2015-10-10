# line styles
#set style line 1 lt 1 lw 2 lc rgb '#1B9E77' # dark teal
#set style line 2 lt 1 lw 2 lc rgb '#D95F02' # dark orange
#set style line 3 lt 1 lw 2 lc rgb '#7570B3' # dark lilac
#set style line 4 lt 1 lw 2 lc rgb '#E7298A' # dark magenta
#set style line 5 lt 1 lw 2 lc rgb '#66A61E' # dark lime green
#set style line 6 lt 1 lw 2 lc rgb '#E6AB02' # dark banana
#set style line 7 lt 1 lw 2 lc rgb '#A6761D' # dark tan
#set style line 8 lt 1 lw 2 lc rgb '#666666' # dark gray

set terminal png
set term png truecolor
set output "Histogram.png"
set title "Histogram"
set xlabel "Ni"
set ylabel "Freq(Ni)"
binwidth=2
bin(x,width)=width*floor(x/width)
set style fill transparent solid 0.3333 border -1
# Add light grid to plot
set style line 102 lc rgb '#d6d7d9' lt 0 lw 1
set grid back ls 102

# xyborder.cfg
set style line 101 lc rgb '#808080' lt 1 lw 1
set border 3 front ls 101
set tics nomirror out scale 0.75
set format '%g'

plot 'dataplot.dat' using (bin($3,binwidth)):(1) smooth freq with boxes title "Nv",'dataplot.dat' using (bin($4,binwidth)):(1) smooth freq with boxes title "Nh"

reset

set terminal png
set term png truecolor
set output "RvsNi.png"
set title "RUNS vs Ni"
set xlabel "RUNS"
set ylabel "Ni"
# Add light grid to plot
set style line 102 lc rgb '#d6d7d9' lt 0 lw 1
set grid back ls 102

# xyborder.cfg
set style line 101 lc rgb '#808080' lt 1 lw 1
set border 3 front ls 101
set tics nomirror out scale 0.75
set format '%g'
plot "dataplot.dat" using 1:3 with lines title "NVni"
# ,"dataplot.dat" using 1:4 with lines title"NHni"

reset

set terminal png
set term png truecolor
set output "RvsQ.png"
set title "RUNS vs Q"
set xlabel "RUNS"
set ylabel "Q"
# Add light grid to plot
set style line 102 lc rgb '#d6d7d9' lt 0 lw 1
set grid back ls 102

# xyborder.cfg
set style line 101 lc rgb '#808080' lt 1 lw 1
set border 3 front ls 101
set tics nomirror out scale 0.75
set format '%g'

plot "dataplot.dat" using 1:2 with lines title "Q"

reset

set terminal png
set output "Rvstho.png"
set title "RUNS vs Density"
set xlabel "RUNS"
set ylabel "Density"
# Add light grid to plot
set style line 102 lc rgb '#d6d7d9' lt 0 lw 1
set grid back ls 102

# xyborder.cfg
set style line 101 lc rgb '#808080' lt 1 lw 1
set border 3 front ls 101
set tics nomirror out scale 0.75
set format '%g'

plot "dataplot.dat" using 1:5 with lines title "Density"


reset

#set terminal wxt
set terminal png
set term png truecolor
set output "HistogramQ.png"
set title "Histogram for Q"
set xlabel "Q"
set ylabel "Freq(Q)"
binwidth=0.01
bin(x,width)=width*floor(x/width)
set style fill transparent solid 0.2 border -1
set style data linespoints
# Add light grid to plot
set style line 102 lc rgb '#d6d7d9' lt 0 lw 1
set grid back ls 102

# xyborder.cfg
set style line 101 lc rgb '#808080' lt 1 lw 1
set border 3 front ls 101
set tics nomirror out scale 0.75
set format '%g'

plot 'dataplot.dat' using (bin($2,binwidth)):(1) smooth freq with boxes title "Q",'dataplot.dat' using (bin($2,binwidth)):(1) smooth freq with lines linecolor rgb "blue" title "Fitline"

reset




#set terminal wxt
set terminal png
set term png truecolor
set output "HistogramTho.png"
set title "Histogram for Tho"
set xlabel "Tho"
set ylabel "Freq(Tho)"
binwidth=0.002
bin(x,width)=width*floor(x/width)


set style fill transparent solid 0.2 border -1
set style data linespoints

# Add light grid to plot
set style line 102 lc rgb '#d6d7d9' lt 0 lw 1
set grid back ls 102

# xyborder.cfg
set style line 101 lc rgb '#808080' lt 1 lw 1
set border 3 front ls 101
set tics nomirror out scale 0.75
set format '%g'
set key inside left top vertical Right noreverse enhanced autotitle nobox

plot 'dataplot.dat' using (bin($5,binwidth)):(1) smooth freq with boxes title "Tho",'dataplot.dat' using (bin($5,binwidth)):(1) smooth freq with lines lt 1 lc rgb 'blue' title "Tho with Lines",'dataplot.dat' using (bin($5,binwidth)):(1) smooth cumulative with lines t 'smooth cumulative'

