program potencial

    implicit none
    double precision, dimension (1:300) :: v, r, dv, dr, f
    double precision :: e, s
    integer :: c
    real :: cont

	e = 0.01
	s = 3.40

	cont = 3.3
	    do c = 1,300
		cont = cont + 0.01
		r(c) = cont
		v(c) = 4*e*(((s/r(c))**12)-((s/r(c))**6))
	    end do

	call forca(v, r, dv, dr, f)

	    do c = 1,300
		write(*,*) r(c), v(c), f(c)
	    end do

	open(1,FILE = "dados.txt")

	    do c = 1,300
		write(1,*) r(c), v(c), f(c)
	    end do

	close(1)

end program potencial

subroutine forca(v, r, dv, dr, f)

    double precision, dimension(1:300) ::  v, r, dv, dr, f
    integer :: c

	do c = 1,299
	    dv(c) = v(c+1) - v(c)
	    dr(c) = r(c+1) - r(c)
	    f(c) = -(dv(c)/dr(c))
	end do

    return

    end subroutine