set terminal pdf enhanced color solid
set output "flip.pdf"

set border 0
set zeroaxis
unset xtics
unset ytics

#set style line 1 linecolor rgb 'black' linetype 1 linewidth 2
set style line 1 lt rgb "red" lw 2 pt 6
set style line 2 linecolor rgb 'red' linetype 1 linewidth 2

set contour
set cntrparam levels discrete 0
set view map
unset surface
set isosamples 1000,1000
set nokey

set xrange [-5:5]
set yrange [-8:5]

set object circle at first -2.30,-4.10 radius char 0.5 \
    fillcolor rgb 'black' fillstyle solid noborder
set object circle at first -0.46,2.34 radius char 0.5 \
    fillcolor rgb 'black' fillstyle solid noborder
set object circle at first 1.91,-0.44 radius char 0.45\
    fillcolor rgb 'black' fillstyle solid noborder

set object circle at first -1.51,-0.42 radius char 0.5 \
    fillstyle empty border lc rgb 'black' lw 2
set object circle at first 0.66,2.58 radius char 0.5 \
    fillstyle empty border lc rgb 'black' lw 2
set object circle at first 2.89,-5.19 radius char 0.45\
    fillstyle empty border lc rgb 'black' lw 2

#set title "Plot of curve y^3 + x^4 - 2x^2y - 7x^2 - 7y + 6"
set style function lines
f(x,y) = y**3 + x**4 - 2*x*x*y - 7*x*x - 7*y + 6
g(x,y) = x**2 + 0.9*y - 0.4*x - 2.5
splot f(x,y) linestyle 1, g(x,y) with lines linestyle 2

