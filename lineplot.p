#set term postscript eps enhanced monochrome 20 dashed dashlength 1 lw 1.5
set terminal postscript eps enhanced color

set key samplen 2 spacing 1.5 font ",22"

set xtics font ",22"
set ytics font ",22"
set ylabel font ",25"
set xlabel font ",25"

set xlabel "Elements Number"
set ylabel "Average Time"
set ytic auto
set xtic auto
set logscale x

set key bottom right

set output "lineplot1.eps"
plot 'plot_t1.out' using 1:2 title "1 thread" with linespoints
set output "lineplot2.eps"
plot 'plot_t2.out' using 1:2 title "2 thread" with linespoints
set output "lineplot3.eps"
plot 'plot_t3.out' using 1:2 title "4 thread" with linespoints
set output "lineplot4.eps"
plot 'plot_t4.out' using 1:2 title "8 thread" with linespoints
set output "lineplot5.eps"
plot 'plot_t5.out' using 1:2 title "16 thread" with linespoints

