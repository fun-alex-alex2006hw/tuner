# Script for gnuplot 5.0
set term postscript eps enhanced color size 10, 21 "Times-Roman,24"
set output "twomm.eps"
set multiplot layout 3,1

set title "All Points Tested - Optimal: 1024 gangs, vector length 128 - Resulting time 0.00399266666667 (stdev: 2.65769323537e-05)"
set xlabel "Num Gangs"
set ylabel "Vector Length"
set zlabel "Time" rotate
set label 1 "0.00399266666667" at 1024.0, 128.0, 0.00399266666667 left
set grid

splot 'twomm.dat' using 1:2:3 notitle with points pointtype 7

splot 'twomm.dat' using 1:2:3 notitle with linespoints

set pm3d border linetype -1 linewidth 0.5
set palette
set hidden3d
splot 'twomm.dat' using 1:2:3 notitle pal with pm3d
