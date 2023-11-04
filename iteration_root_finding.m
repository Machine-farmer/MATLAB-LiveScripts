f = @(x) x^3 + x^2 - 1;
g = @(x) x - f(x)/3;
x0 = input('Enter initial guess: ');
maxIter = input('Enter maximum number of iterations: ');
tol = input('Enter tolerance: ');
iter = 0;
err = inf;

while iter < maxIter && err > tol
    x1 = g(x0);
    err = abs(x1 - x0);
    iter = iter + 1;
    x0 = x1;
    disp(['Iteration ', num2str(iter), ': x = ', num2str(x0)])
end
disp(['The root is approximately ', num2str(x0), ' after ', num2str(iter), ' iterations.'])
