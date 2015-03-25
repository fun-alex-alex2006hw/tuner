# Script for gnuplot 5.0
set term postscript eps enhanced color size 10, 21 "Times-Roman,24"
set output "bicg_k2.eps"
set multiplot layout 3,1

set title "All Points Tested - Optimal: 512 gangs, vector length 32 - Resulting time 6e-05 (stdev: 0.0)"
set xlabel "Num Gangs"
set ylabel "Vector Length"
set zlabel "Time" rotate
set label 1 "6e-05" at 512.0, 32.0, 6e-05 left
set grid

splot 'bicg_k2.dat' using 1:2:3 notitle with points pointtype 7

splot 'bicg_k2.dat' using 1:2:3 notitle with linespoints

set pm3d border linetype -1 linewidth 0.5
set palette
set hidden3d
splot 'bicg_k2.dat' using 1:2:3 notitle pal with pm3d
