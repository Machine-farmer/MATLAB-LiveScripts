function false_position(f,x0,x1,tol,itr);
%f = input('Enter the function');
%x0=input('Enter x0=');
%x1=input('Enter x1=');
%tol=input('Enter tolerance=');
%itr=input('Enter number of iteration=');

if f(x0)*f(x1)<0
p=0;
for i=1:itr
    x2=(x0*f(x1)-x1*f(x0))/(f(x1)-f(x0));
    if abs(x2-x1) < tol
        p=1;
        k=i;
        break;
    else
        if f(x0)*f(x2)<0
           x1=x2;
        else
            x0=x2;
        end
    end
    fprintf(' Iteration %d = %.4f \n',i,x2)
end


if p==1
    fprintf('Solution is %f at iteration %i ',x2,k)
else
    fprintf('No convergent solution exist in the given number iteration ')
end
else 
    disp('No root in given brackets')
end
end