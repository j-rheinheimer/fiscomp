program ler_arquivos
implicit none

real, dimension (1:8) :: a, b, c, d, e
integer :: p

open (1, FILE="data1.txt")
do p = 1,8
read(1,*) a(p), b(p), c(p), d(p), e(p)
end do

close (1)

do p = 1,8
    write(*,*) a(p), b(p), c(p), d(p), e(p)
end do

end program