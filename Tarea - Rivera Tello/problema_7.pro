PRO problema_7
infile = 'C:\Users\gerar\OneDrive\IDL-scripts\Tarea\datos.dat'
data = fltarr(3,5)
OPENR,1,infile
SKIP_LUN,1,3, /LINES
READF,1,data
CLOSE,1
data_col3 = data[2,*]
PRINT, 'La tercera columna de los datos leidos es'
PRINT, data_col3
PRINT, 'El valor maximo es', MAX(data_col3)
PRINT, 'El valor minimo es', MIN(data_col3)
PRINT, 'El valor medio es', MEAN(data_col3)
END