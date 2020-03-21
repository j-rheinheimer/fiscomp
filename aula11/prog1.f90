program balistica

    implicit none
    double precision, dimension(1:90) :: xmax, theta
    double precision, dimension(0:10000) :: x, y, vx, vy, t
    double precision :: g, dt, ang, vo, aux, b
    integer :: i, j

!    open(1, FILE = "variaveis.txt")

        vo = 10
        x(0) = 0
        y(0) = 0
        dt = 0.008
        g = 9.79
        b = 0.00004

!    close(1)

        do j = 1,90

            ang = 3.1415/180d0
            theta(j) = ang*j
            aux = 0
            i = 0

                do while (aux .ge. 0)

                    i = i + 1

                    vx(0) = vo*cos(ang*j)
                    vy(0) = vo*sin(ang*j)

                    t(i) = dt*i

                    vy(i) = vy(i-1) - g*t(i-1) - b*vo*dt*vy(i-1)
                    y(i) = vy(i-1)*dt + y(i-1)

                    x(i) = vx(i-1)*dt + x(i-1)
                    vx(i) = vx(i-1)

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
