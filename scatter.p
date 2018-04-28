set term postscript eps enhanced monochrome 20 dashed dashlength 1 lw 1.5
#set terminal postscript eps enhanced color

set key samplen 2 spacing 1 font ",22"

set xtics font ",22"
set ytics font ",22"
set ylabel font ",25"
set xlabel font ",25"
set logscale x

#set format y "10^{%L}"
set xlabel "Elements Number"
set ylabel "Time"
set ytic auto
set xtic auto


set output "scatter.eps"
plot 'app.out' using 1:3 notitle with points pt 1 ps 1.5

