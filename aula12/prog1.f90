program balistica

    implicit none
    double precision, dimension(1:70) :: xmax, theta
    double precision, dimension(0:10000) :: theta, vx, vy, v, r, x, y, fx, fy, fresx, fresy, t
    real :: ang, vo, ro, yo, vwind, vwindx, vwindy, dt, const, aux
    integer :: i, j

    vo = 2
    ro = 1
    dt = 0.05
    yo = 10000
    vwindx = 1
    vwindy = 4
    const = 0.0004
    ang = 3.1415/180
    vwind = sqrt((vwindx**2)+(vwindy**2))


	do j = 1,70

	    theta(j) = ang*j
	    i = 0

		do while (aux .ge. 0)

		    i = i + 1

		    vx(i-1) = vo*cos(ang*j)
		    vy(i-1) = vo*sin(ang*j)
		    v(i-1) = sqrt((vx(i-1)**2) + (vy(i-1)**2))

                        !DENSIDADE DO AR!
		    r(i-1) = ro*exp(-y(i-1)/yo)

                        !VELOCIDADE DO VENTO!
		    fx(i-1) = (vx(i-1) - vwind)*sqrt(((vx(i-1) - vwindx)**2) + ((vy(i-1) - vwindy)**2))
		    fy(i-1) = (vy(i-1) - vwind)*sqrt(((vx(i-1) - vwindx)**2) + ((vy(i-1) - vwindy)**2))

                        !FORÇA RESULTANTE!
		    fresx(i-1) = r(i-1)*fx(i-1)
		    fresy(i-1) = r(i-1)*fy(i-1)

		    t(i) = dt*i

		    vy(i) = vy(i-1) - g*t(i-1) - const*fresy(i-1)*t(i-1)
		    y(i) = vy(i-1)*dt + y(i-1)

		    x(i) = vx(i-1)*dt + x(i-1)
		    vx(i) = vx(i-1) - const*fresx(i-1)*t(i-1)

		    if (y(i) .le. 0) then
			xmax(j) = x(i)
		    endif

		    if (y(i) .gt. 0) then
			open(UNIT = 2, FILE = 'XY.txt')
			    write(2,*) x(i), y(i)
		    endif

		    aux = y(i)

		enddo

	    open(UNIT = 3, FILE = 'Xtheta.txt')
		write(3,*) theta(j), xmax(j)

	enddo

	close(2)
	close(3)

end program