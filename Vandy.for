
C   Calculation of volume of methane from Van Der Waal's equation      



      program vaneq
      implicit double precision(a-h,o-z)
      a=1.79225
      b=0.029
      R=0.08134
      P=189.65
      T=323
      a3=P
      a2=-(P*b+R*T)
      a1=a
      a0=-(a*b)
      x=1
10    val=func(x)
      der=derivative(x)
      h=-(val/der)
      if(abs(val).lt.(1.0d-4)) goto 20
      x=x+h
      goto 10
20    write(*,*)x
      pause
      stop
      end


      function derivative(x)
      implicit double precision(a-h,o-z)
      derivative=3*189.65*(x**3)-32.65*(x**2)+1.79225*x-1.79225
      return
      end


      function func(x)
      implicit double precision(a-h,o-z)
      func=189.65*(x**3)-32.65*(x**2)+1.79225*x_0.052
      return
      end        