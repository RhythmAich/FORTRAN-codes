

      program squareroot
      implicit double precision(a-h,o-z)
      parameter(n=3)
      dimension x(n),y(n)
      read(*,*)x(1),x(2),x(3)
      read(*,*)y(1),y(2),y(3)
      s=0
      do i=1,n
      s=s+x(i)**2.0+y(i)**2.0
      end do
      s=sqrt(s)
      write(*,*)'result=',s
      pause
      stop
      end