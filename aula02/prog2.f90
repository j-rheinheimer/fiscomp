program prog2
implicit none

integer, dimension(1:3) :: v
double precision, dimension(1:2) :: vr

v(1) = 1
v(2) = - 4
v(3) = 6

vr(1) = 3.0
vr(2) = 9.0

write(*,*) sqrt(vr)

end program prog2
