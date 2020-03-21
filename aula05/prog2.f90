program funcao

    implicit none
    double precision :: area_circulo, volume_esfera, x, y

        write(*,*) "Digite o raio da circunferencia"
        read(*,*) x
        write(*,*) area_circulo(x)

	write(*,*) "Digite o raio da esfera"
	read(*,*) y
	write(*,*) volume_esfera(y)

end program

    double precision function area_circulo(r)
        double precision :: r
        area_circulo = 3.1415*r**2
        return
    end function area_circulo

    double precision function volume_esfera(r)
	double precision :: r
	volume_esfera = (4d0/3d0)*3.1415*r**3
	return
    end function volume_esfera