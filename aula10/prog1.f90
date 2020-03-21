program ciclista

    implicit none
    double precision, dimension(0:500) :: v, v1, tempo, diff
    double precision :: m, p, dt, b, ro, a
    integer :: c

    m = 60
    p = 400
    dt = 0.05
    b = 05
    ro = 1
    a = 0.33
    v(0) = 4

	do c = 1,500
	    tempo(c) = c*dt
	    diff(c-1) = p/(m*v(c-1))
	    v(c) = diff(c-1)*dt + v(c-1) - ((b*ro*a*v(c-1)**2)/m)*dt
!	    v(c) = diff(c-1)*dt + v(c-1)
	    write(*,*) tempo(c), v(c)
	enddo

    open(1,FILE = "dados2.txt")

	do c = 1,500
	    write(1,*) tempo(c), v(c)
	enddo

    close(1)

end program