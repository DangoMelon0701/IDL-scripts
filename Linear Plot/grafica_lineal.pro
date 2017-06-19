pro grafica_lineal
  file='C:\Users\gerar\OneDrive\IDL-scripts\Linear Plot\DATA_ORDENADA_3.txt'
  data_struct = READ_ASCII(file, DATA_START=0)
  data=data_struct.field1
  T=data(0,*)
  Vx=data(1,*)
  Vy=data(2,*)
  Vz=data(3,*)
  Vprom=data(4,*)
  
  P1=plot(T,Vz,name='Vx',THICK=2.5,YTITLE='VALOR', XTITLE='TIME STEP', dimensions=[1250,600],$
    FONT_SIZE=15,POSITION=[0.05,0.15,0.99,0.85], XMinor=1,YMinor=2,xrange=[10000,670000],XTICKFORMAT='(8i)')
  l1 = LEGEND(TARGET=[p1], /NORMAL, /AUTO_TEXT_COLOR, POSITION=[0.50,0.7])
  p1.Save, 'C:\Users\gerar\OneDrive\IDL-scripts\Linear Plot\T_V.png',BORDER=10, RESOLUTION=250, /TRANSPARENT
  END