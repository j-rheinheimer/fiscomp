program prog3
implicit none

double precision, dimension(1:2,1:2) :: matrix
double precision :: a,b,det

matrix(1,1) = 1d0
matrix(1,2) = 4d0
matrix(2,1) = 3d0
matrix(2,2) = 2d0

a = matrix(1,1)*matrix(2,2)
b = matrix(1,2)*matrix(2,1)
det = a-b

write(*,*)det

end program prog3
