PRO problema_9
A = [[0,1],[-2,-3]]
b = A[0,0]+A[1,1]
c = A[0,0]*A[1,1]-A[0,1]*A[1,0]
eigenvalue1 = (b+SQRT(b^2 - 4*c))/2
eigenvalue2 = (b-SQRT(b^2 - 4*c))/2
PRINT, 'Los eigenvalores de la matriz A son:'
PRINT, eigenvalue1
PRINT, eigenvalue2
END