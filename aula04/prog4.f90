program somatorio3
implicit none

integer :: cont, k

cont = 0
do k = 1,10
    cont = cont+((k**2)+5d0*(k**3))
end do

write(*,*) cont

end program somatorio3