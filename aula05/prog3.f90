program funcao2

implicit none
double precision, dimension(1:10) :: mult
integer :: c

do c = 1,10
    write(*,*) mult
end do

end program

double precision function mult(v1,v2)

    real, dimension (1:10) :: v1, v2
    integer :: c
    real :: count1, count2

    count1 = 0
    do c = 1,10
	count1 = count1 + 1
	v1(t) = count1
    end do

    count2 = 20
    do c = 1,10
	count2 = count2 + 5
	v2(t) = count2
    end do

    mult = v1*v2


    return
    end function mult