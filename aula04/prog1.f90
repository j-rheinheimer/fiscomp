program notas
implicit none

real, dimension(1:36) :: p1, p2, m
real :: conta, contr, pa, pr
integer :: c

open(1, FILE = "NOTAS.csv")

read(1,*)

do c = 1,36
    read(1,*) p1(c), p2(c)
end do

close(1)

do c = 1,36
    m(c) = (p1(c)+p2(c))/2d0
end do

conta = 0
contr = 0

do c = 1,36

    if (m(c) .ge. 5.0) then
	write(*,*) p1(c), p2(c), m(c), "A"
	conta = conta + 1
	pa = (conta/36d0)*100

    else if (m(c) .lt. 5.0) then
	write(*,*) p1(c), p2(c), m(c), "R"
	contr = contr + 1
	pr = (contr/36d0)*100

    end if

end do

write(*,*) "O número de aprovados é",conta,"e a porcentagem é",pa
write(*,*) "O número de reprovados é",contr,"e sua porcentagem é",pr

open(3,file = "notasfinais.txt")

1 format(3(F5.2, 1X),A1)

    do c = 1,36

	if (m(c) .ge. 5.0) then
    	    write(3,1) p1(c), p2(c), m(c), "A"
	else if (m(c) .lt. 5.0) then
	    write(3,1) p1(c), p2(c), m(c), "R"

	end if

    end do

close (3)

end program notas
