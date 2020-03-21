program cinematica

implicit none

real, dimension (1:100) :: x, t, v
real :: xo, c, vo, a
integer :: i

xo = 1
vo = 5
a = 2

c = 0
do i = 1,100
    c = c + 0.5
    t(i) = c
    v(i) = vo + a*t(i)
    x(i) = xo + vo*t(i) + (1d0/2d0)*a*t(i)**2
end do

do i = 1,100
    write(*,*) t(i), x(i), v(i)
end do

open(1,FILE = "dados.txt")

do i = 1,100
    write(1,*) t(i), x(i), v(i)
end do

close(1)

end program cinematica