program somatorio2
implicit none

real :: cont
integer :: c

cont = 0
do c = 1,10
    cont = cont+(c**2)
end do

write(*,*) cont

end program somatorio2
