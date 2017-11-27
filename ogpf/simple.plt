#
# $Id: simple.dem,v 1.5 2011/08/19 21:01:41 sfeam Exp $
#
# Requires data files "[123].dat" from this directory,
# so change current working directory to this directory before running.
# gnuplot> set term <term-type>
# gnuplot> load 'simple.dem'
#
set key left box
set samples 50
plot [-10:10] sin(x),atan(x),cos(atan(x))
pause -1 "Hit return to continue"

set key right nobox
set samples 100
plot [-pi/2:pi] cos(x),-(sin(x) > sin(x+1) ? sin(x) : sin(x+1))
pause -1 "Hit return to continue"

set key left box
set samples 200
plot [-3:5] asin(x),acos(x)
pause -1 "Hit return to continue"

plot [-30:20] besj0(x)*0.12e1 with impulses, (x**besj0(x))-2.5 with points
pause -1 "Hit return to continue"

set samples 400
plot [-10:10] real(sin(x)**besj0(x))
pause -1 "Hit return to continue"

set key bmargin center horizontal
plot [-5*pi:5*pi] [-5:5] real(tan(x)/atan(x)), 1/x
pause -1 "Hit return to continue"

set key left box
set autoscale
set samples 800
plot [-30:20] sin(x*20)*atan(x)
pause -1 "Hit return to continue"

plot [-19:19] '1.dat'with impulses ,'2.dat' ,'3.dat' with lines
pause -1 "Hit return to continue"
#
# Deprecated syntax - better to show an example with using (f(column(1))
#f(x) = x/100
#plot [-19:19] '1.dat'with impulses ,'2.dat' thru f(x) ,'3.dat' with lines
#pause -1 "Hit return to continue"
reset

