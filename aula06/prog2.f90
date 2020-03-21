program prog2

implicit none
real, dimension (1:300) :: v, t, x, xf
real :: vo, a, cont
integer :: c

vo = 2
a = 10

cont = 0
do c = 1,300
    cont = cont + 0.01
    t(c) = cont
    v(c) = 2*vo*t(c) + (4d0/3d0)*a*t(c)**3
end do

open(1,FILE = "dados3.txt")

    do c = 1,300
	write(1,*) t(c), v(c)
    end do

close(1)

call integral (v, t, xf)

    open(2,FILE = "dados4.txt")
	do c =1,299
	    write(2,*) t(c), xf(c)
	end do

    close(2)

do c = 1,299
    write(*,*) t(c), xf(c), v(c)
end do

end program prog2

subroutine integral (v, t, xf)

    real, dimension(1:300) :: v, t, x, ret, tri, xf
    real :: cont
    integer :: c

    cont = 0

    do c = 1,299
	ret(c) = (t(c+1)-t(c))*v(c)
	tri(c) = ((t(c+1)-t(c))*(v(c+1)-v(c)))/2
	x(c) = tri(c) + ret(c)
	cont = cont + x(c)
	xf(c) = cont
    end do

return
end subroutine