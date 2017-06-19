PRO problema_10
infile = 'C:\Users\gerar\OneDrive\IDL-scripts\Tarea\LT50060661990273CUB00_MTLold.txt'
QCALmax=255.
QCALmin=0.
nlines = FILE_LINES(infile)
data = STRARR(1,nlines)
OPENR,1,infile
READF,1,data
CLOSE,1
data = STRSPLIT(data,'=', /EXTRACT)
PRINT, 'Data leida'
PRINT, data

PRINT, 'Gains de cada banda'
FOR I=0,nlines/2 -1 DO BEGIN
  IF (I EQ 5)THEN BEGIN I+=1
  PRINT, 'gains'+STRTRIM(STRING(I+1), 1)+'=', (float(data[2*(I-1),1])-float(data[2*I-1,1]))/(QCALmax-QCALmin)
  ENDIF ELSE BEGIN
  PRINT, 'gains'+STRTRIM(STRING(I+1), 1)+'=', (float(data[2*I,1])-float(data[2*I+1,1]))/(QCALmax-QCALmin)
  ENDELSE
ENDFOR
END