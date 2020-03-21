program produtorio
implicit none

integer :: c, cont

cont = 1
do c = 1,10
    cont = cont*c
end do

write(*,*) cont

end program produtorio
