program balistica

    implicit none
    double precision, dimension (0:500) :: x, y, vy, tempo, v
    double precision :: g, ang, dt, vx
    integer :: c

    x(0) = 0
    y(0) = 0
    v(0) = 1
    g = 9.8
    dt = 0.05
    ang = 0.7854

    do c = 1,500
	tempo(c) = dt*c
	vx = v(0)*cos(ang)
	vy(0) = v(0)*sin(ang)
	vy(c) = vy(c-1) - g*dt
	y(c) = vy(c)*dt + y(c-1)
	x(c) = vx*dt + x(c-1)
	v(c) = sqrt((vx**2)+(vy(c)**2))
	write(*,*) x(c), y(c)
    enddo

    open(1,FILE = "dados.txt")

	do c = 1,500
	    write(1,*) x(c), y(c)
	enddo

    close(1)

end program