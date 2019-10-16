      program ODE
      implicit double precision(a-h,o-z)
      h=0.1
      t=11.0
      y0=-0.991976794
      write(*,*)
10    continue
      write(*,*)ye,'      ',y0,'      ',t
      a=dydt(y0)
      y=a*h+y0
      t=t+h
      y0=y
      ye=yexact(t)
      if(t.ge.13.0) goto 20
      goto 10
20    continue
      pause
      stop      
      end

      function dydt(y)
      implicit double precision(a-h,o-z)
      dydt=y*y+1.0
      return
      end
   
      function yexact(t)
      implicit double precision(a-h,o-z)
      yexact=tan(3.14/4+t)
      return
      end
      