program dinamica

implicit none

real, dimension (1:500) :: x, t
real :: xo, vo, a, cont
integer :: k

xo = 2
vo = 4
a = 6

cont = 0
do k = 1,500
    cont = cont + 0.01
    t(k) = cont
    x(k) = xo + vo*t(k)+((a*(t(k)**2))/2)
end do

do k = 1,500
    write(*,*) x(k), t(k)
end do

open(1,file = "dados.txt")

do k = 1,500
    write(1,*) x(k), t(k)
end do

close (1)

end program dinamica