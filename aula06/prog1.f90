program prog1

implicit none

real, dimension(1:300)  :: x, t, v
real :: xo, vo, a, cont
integer :: c

xo = 0
vo = 2
a = 10

cont = 0
do c = 1,300
    cont = cont + 0.01
    t(c) = cont
    x(c) = xo + vo*t(c)**2 + (1d0/3d0)*a*t(c)**4
end do

call derivada(x, t, v)

do c = 1,299
    write(*,*) t(c), x(c), v(c)
end do

open(1,FILE = "dados.txt")

do c = 1,300
    write(1,*) t(c), x(c)
end do

close (1)

open(2,FILE = "dados2.txt")

do c = 1,299
    write(2,*) t(c), v(c)
end do

close(2)

end program prog1

subroutine derivada(x, t, v)

real, dimension (1:300) ::  x, t, v, dx, dt
integer :: c

do c = 1,299
    dx(c) = x(c + 1) - x(c)
    dt(c) = t(c + 1) - t(c)
    v(c) = dx(c)/dt(c)
end do

return
end subroutine derivada