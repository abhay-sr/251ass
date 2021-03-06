#set terminal postscript eps enhanced color size 3.9,2.9
set term postscript eps enhanced monochrome 20 dashed dashlength 1 lw 1.5
set output "speedup.eps"

set key font ",22"
set xtics font ",22"
set ytics font ",22"
set ylabel font ",25"
set xlabel font ",25"
set xlabel "Workload"
set ylabel "Application speedup"
set yrange[0:]
set ytic auto
set boxwidth 1 relative
set style data histograms
set style histogram cluster
set style fill pattern border
plot 'speedup.out' u 2:xticlabels(1) title "1 thread",\
'' u 3 title "2 thread" fillstyle pattern 7,\
'' u 4 title "4 thread" fillstyle pattern 12,\
'' u 5 title "8 thread" fillstyle pattern 14,\
'' u 6 title "16 thread" fillstyle pattern 15


set terminal postscript eps enhanced color size 3.9,2.9
set output "speedup_color.eps"
plot 'speedup.out' u 2:xticlabels(1) title "1 thread",\
'' u 3 title "2 thread" fillstyle pattern 7,\
'' u 4 title "4 thread" fillstyle pattern 12,\
'' u 5 title "8 thread" fillstyle pattern 14,\
'' u 6 title "16 thread" fillstyle pattern 15

set term postscript eps enhanced monochrome 20 dashed dashlength 1 lw 1.5
set output "speedup_errorbar.eps"
set xtics rotate by -45
set style histogram errorbars lw 3
set style data histogram

plot 'speedup.out' u 2:7:xticlabels(1) title "1 thread",\
'' u 3:8 title "2 thread" fillstyle pattern 7,\
'' u 4:9 title "4 thread" fillstyle pattern 12,\
'' u 5:10 title "8 thread" fillstyle pattern 14,\
'' u 6:11 title "16 thread" fillstyle pattern 15
