program prog01
implicit none

double precision :: pi, r, area, volume
character (len = 1) :: c

pi = 3.14

write(*,*) "O que vc deseja calcular? Digite (a) para calcular a área e (v) para calcular o volume"
read(*,*)c

if (c .eq. "a") then
    write(*,*)"Digite o valor do raio da circunferencia"
    read(*,*)r
    area = pi*(r**2)
    write(*,*)"A área da circunferência é",area
else if (c .eq. "v") then
    write(*,*)"Digite o valor do raio da esfera"
    read(*,*)r
    volume = (4d0/3d0)*pi*r**3
    write(*,*)"O volume da esfera é",volume
else
    write(*,*) "Você não digitou um caractér válido"
end if

end program prog01
