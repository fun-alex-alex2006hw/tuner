# Script for gnuplot 5.0
set term postscript eps enhanced color size 10, 21 "Times-Roman,24"
set output "gesummv.eps"
set multiplot layout 3,1

set title "All Points Tested - Optimal: 1024 gangs, vector length 64 - Resulting time 0.000497666666667 (stdev: 1.53079500043e-05)"
set xlabel "Num Gangs"
set ylabel "Vector Length"
set zlabel "Time" rotate
set label 1 "0.000497666666667" at 1024.0, 64.0, 0.000497666666667 left
set grid

splot 'gesummv.dat' using 1:2:3 notitle with points pointtype 7

splot 'gesummv.dat' using 1:2:3 notitle with linespoints

set pm3d border linetype -1 linewidth 0.5
set palette
set hidden3d
splot 'gesummv.dat' using 1:2:3 notitle pal with pm3d
