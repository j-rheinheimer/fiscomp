program funcao2

implicit none
double precision :: r, v, pi
real, dimension (1:100) :: x, y
real, dimension (1:3) :: a,b,c
real :: pe, soma


!VETORES!
!do c = 1,100
!    x(c) = 2*c
!end do

!do c = 1,100
!    y(c) = c
!end do
!VETORES!

!SUBROTINA"
!read(*,*) r
!    call circulo(r,v,a)
!write(*,*) "O valor da área do círculo é", a, "o valor do volume da esfera é", v
!SUBROTINA!

write(*,*) "Digite as coordenadas do vetor 'a'"
read(*,*) a(1), a(2), a(3)
write(*,*) "Digite as coordenadas do vetor 'b'"
read(*,*) b(1), b(2), b(3)

call vetorial(a,b,c)

write(*,*) "O vetor do produto vetorial é"
write(*,*) c(1), c(2), c(3)

end program

!FUNÇÃO PARA CALCULAR O PRODUTO INTERNO ENTRE DOIS VETORES!
function pe(x,y)
real :: pe, cont
real, dimension (1:100) :: x, y
integer :: c

cont = 0
do c = 1,100
    cont = cont + (x(c)*y(c))
    pe = cont
end do

return
end function pe
!**********************************************************!

!SUBROTINA PARA CALCULAR O PRODUTO VETORIAL ENTRE DOIS VETORES!
subroutine vetorial(a,b,c)
real, dimension (1:3) :: a, b, c

c(1) = a(2)*b(3)-a(3)*b(2)
c(2) = a(3)*b(1)-a(1)*b(3)
c(3) = a(1)*b(2)-a(2)*b(1)

return
end subroutine vetorial
!***********************************************************!
!FUNÇÃO PARA CALCULAR A SOMATÓRIA PARTINDO DE UM VETOR!
function soma(x)
real :: soma, cont
real, dimension (1:100) :: x
integer :: c

cont = 0
do c = 1,100
    cont = cont + x(c)
    soma = cont
end do

return
end function soma
!***********************************************************!

!SUBROTINA !
subroutine circulo(r, v, a)
double precision :: r, v, a, pi

pi = 3.1415
v = (4d0/3d0)*pi*r**3
a = pi*r**2

return
end subroutine circulo
!***********************************************************!