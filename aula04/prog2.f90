program somatorio
implicit none

real :: cont
integer :: k

cont = 0
do k = 1,10
    cont = k + cont
end do

write(*,*) cont

end program somatorio
