# Script for gnuplot 5.0
set term postscript eps enhanced color size 10, 21 "Times-Roman,24"
set output "le2d-omp-loop1-part2.eps"
set multiplot layout 3,1

set title "All Points Tested - Optimal: 1024 gangs, vector length 128 - Resulting time 9.155696 (stdev: 0)"
set xlabel "Num Gangs"
set ylabel "Vector Length"
set zlabel "Time" rotate
set label 1 "9.155696" at 1024.0, 128.0, 9.155696 left
set grid

splot 'le2d-omp-loop1-part2.dat' using 1:2:3 notitle with points pointtype 7

splot 'le2d-omp-loop1-part2.dat' using 1:2:3 notitle with linespoints

set pm3d border linetype -1 linewidth 0.5
set palette
set hidden3d
splot 'le2d-omp-loop1-part2.dat' using 1:2:3 notitle pal with pm3d
