f = @(x) x*log10(x)-1.2;
fd = @(x) log10(x)/log10(10) + 1/log10(10);
p0 = input('Enter initial approximation: ');
n = input('Enter no. of iterations, n: ');
tol = input('Enter tolerance, tol:  ');
i = 1;
while i <= n
    d = f(p0) / fd(p0);   
    p0 = p0 - d;          
    if abs(d) < tol       
        fprintf('\nApproximate solution xn = %11.8f \n\n', p0);
        break;
    else
        i = i+1;          
    end
end
