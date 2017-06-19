PRO problema_2
coefs = [[1.,-1.,1.],[1.,2.,1.],[2.,3.,-1.]]
result = [1.,2.,4.]
sol = CRAMER(coefs,result)
PRINT, 'X =',sol[0]
PRINT, 'Y =',sol[1]
PRINT, 'Z =',sol[2]
END