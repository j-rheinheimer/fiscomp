program prog5
implicit none

integer :: i

write(*,*) "Entre com o valor de i"
read(*,*) i

!Introduzido o IF... THEN... END IF

if (i .gt. 3) then
    write(*,*) "azul"
end if

end program prog5
