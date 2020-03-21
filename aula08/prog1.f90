program aleatorio

    implicit none
    real, dimension(1:10) :: r, resp
    real :: cont
    integer :: c, i, j, k

    cont = 0

	do i = 1,10
	    r(i) = rand()*10
	enddo

    do k = 1,10
	do j = 1,10
	    if(cont .lt. r(j)) then
		cont = r(j)
	    endif
	enddo

	do c = 1,10
	    if(cont .eq. r(c)) then
		r(c) = 0
	    endif
	enddo

	    resp(k) = cont
	    cont = 0
	    write(*,*) resp(k)
    enddo


end program