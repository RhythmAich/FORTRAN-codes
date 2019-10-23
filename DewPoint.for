      

      program dewpoint
      implicit double precision(a-h,o-z)
      open(1,file='dewpoint.dat')
      a=14.2724
      b=2945.47
      c=49.15
      d=14.203
      e=2967.64
      f=64.15
      pt=70.0
      t1=342.99
      t2=362.73
      ya=0.1
101   yb=1-ya
      t0=ya*t1+yb+t2
100   val=func(a,b,c,d,e,f,ya,yb,pt,t0)
      der=derivative(a,b,c,d,e,f,ya,yb,pt,t0)
      h=-val/der
      if(abs(val).ge.1.0d-4) goto 200
      t0=t0+h
      goto 100
200   write(1,*)ya,t0
      ya=ya+0.1
      if(ya.ge.1) goto 102
      goto 101
102   close(1)
      pause
      stop
      end


      function func(a,b,c,d,e,f,ya,yb,pt,t0)
      implicit double precision(a-h,o-z)
      func=ya*pt*EXP(-(a-b/(t0-c)))+yb*pt*EXP(-(d-e/(t0-f)))
      return
      end


      function derivative(a,b,c,d,e,f,ya,yb,pt,t0)
      implicit double precision(a-h,o-z)
      derivative=(-b*ya*pt*EXP(-(a-b/(t0-c))))/((t0-c)**2)+(-e*yb*pt*EXP(-(d-e/(t0-f)))/((t0-f)**2))
      return
      end         