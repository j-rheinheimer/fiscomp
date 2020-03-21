    program program1 !primeira linha
    implicit none
    !definindo variaveis
    integer :: i,j,k !definindo variaveis inteiras
    real :: p,q !definindo variaveis reais (precisao simples)
    double precision :: x,y,z !definindo variaveis reais (precisao dupla)
    real*8 :: w,v !equivalente a double precision
    character (len=10) :: n1, n2 !definindo strings
    complex :: cx !definindo variaveis complexas

    !operando
    i = 5
    k = 14
    p = real(k)/i
    write(*,*) p

    end program program1 !ultima linha
