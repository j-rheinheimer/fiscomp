    program program1
    implicit none

    double precision :: area, r, pi, volume
    write(*,*)"Entre o valor do raio"
    read(*,*) r
    pi = 3.1415
    area = pi*(r**2)
    volume = (4d0/3d0)*pi*(r**3)
    write(*,*) "O volume da esfera é",volume

    end program program1