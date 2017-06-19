PRO problema_6
data = fltarr(4,3)
FOREACH element,data,index DO BEGIN
data[index]=RANDOMU(1500+index)
ENDFOREACH
PRINT,'Data a escribir'
PRINT, data

;Escribiendo en un archivo
outfile = 'C:\Users\gerar\OneDrive\IDL-scripts\Tarea\mis_datos.dat'
OPENW,1,outfile
PRINTF,1,data,FORMAT='(4(1X,F10.6))'
CLOSE,1 

;Leyendo del mismo archivo
infile = 'C:\Users\gerar\OneDrive\IDL-scripts\Tarea\mis_datos.dat'
indata = fltarr(4,3)
OPENR,2,infile
READF,2,indata
CLOSE,2
PRINT, 'Data leida del archivo'
PRINT, indata
END