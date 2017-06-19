PRO problema_3
a1=[1.,1.,1.]
a2=[-1.,1.,0]
a3=[2.,0.,1.]
mat = [TRANSPOSE(a1),TRANSPOSE(a2),TRANSPOSE(a3)]
PRINT, 'La determinante del sistema es',DETERM(mat)
IF (DETERM(mat) EQ 0) THEN BEGIN
  PRINT, 'El sistema es linealmente dependiente'
ENDIF ELSE BEGIN
  PRINT, 'El sistema es linealmente independiente'
ENDELSE
END