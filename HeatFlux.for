      

      program heatflux
      implicit double precision(a-h,o-z)
      m=5.0
      t1=25.0
      r=0.01
      h=0.5
      cp=4187.0
100   continue
      f=(m*cp*t1)/(2*3.14*r*h)
      t2=t1+25.0
      write(*,*)'T2=',t2,'Heat flux,q=',f
      t1=t1+10.0
      if(t2.ge.150.0) goto 101
101   pause
      stop
      end      