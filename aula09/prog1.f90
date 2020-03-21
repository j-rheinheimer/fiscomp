program decaimento

    implicit none
    double precision, dimension (0:200) :: nu, t, diff
    double precision :: tal, dt
    real :: cont
    integer :: c

    cont = 0
    nu(0) = 100
    tal = 1
    dt = 0.05

    do c = 1,200
	t(c) = c*dt
	diff(c-1) = -(nu(c-1)/tal)
	nu(c) = diff(c-1)*dt + nu(c-1)
	write(*,*) t(c), nu(c)
    enddo

    open(1,FILE = "dados.txt")

	do c = 0,200
	    write(1,*) t(c), nu(c)
	enddo

    close(1)

end program