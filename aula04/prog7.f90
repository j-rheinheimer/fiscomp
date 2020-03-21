program produtorio2
implicit none

integer :: c, cont

cont = 1
do c = 2,10,2
    cont = cont*c
end do

write(*,*) cont

end program produtorio2
