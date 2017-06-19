PRO problema_8
A = [[2.,6.,8.],[2.,7.,4.],[1.,9.,4.]]
B = [[1.,5.,2.],[2.,7.,5.],[6.,4.,1.]]
PRINT, 'Tenemos las matrices A y B'
PRINT, A
PRINT, '=============================================='
PRINT,B
PRINT, 'La transpuesta de la multiplicación es'
PRINT, TRANSPOSE(A#B)
PRINT, 'La multiplicaion de las transpuestas es'
PRINT, TRANSPOSE(B)#TRANSPOSE(A)
END