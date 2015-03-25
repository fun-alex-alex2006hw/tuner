# Script for gnuplot 5.0
set term postscript eps enhanced color size 10, 21 "Times-Roman,24"
set output "atax.eps"
set multiplot layout 3,1

set title "All Points Tested - Optimal: 128 gangs, vector length 128 - Resulting time 0.000570666666667 (stdev: 1.2503332889e-05)"
set xlabel "Num Gangs"
set ylabel "Vector Length"
set zlabel "Time" rotate
set label 1 "0.000570666666667" at 128.0, 128.0, 0.000570666666667 left
set grid

splot 'atax.dat' using 1:2:3 notitle with points pointtype 7

splot 'atax.dat' using 1:2:3 notitle with linespoints

set pm3d border linetype -1 linewidth 0.5
set palette
set hidden3d
splot 'atax.dat' using 1:2:3 notitle pal with pm3d
