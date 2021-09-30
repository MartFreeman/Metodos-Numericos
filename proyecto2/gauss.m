function [X] = gauss
clc
clear
format long
[A,n,B] = Matriz;
E = cond(A);
fprintf('\nEl condicional de matriz es (%g)\n',E);
AB =  [A B];
for k = 1:n-1;
    for i = k+1:n;
        multiplicador = AB(i,k)/AB(k,k);
        for j = k:n+1;
            AB(i,j)= AB(i,j)-multiplicador*AB(k,j);
        end 
    end 
end
X(n,n) = AB(n,n+1)/ AB(n,n);
    for i = n-1:-1:1;
        acum = 0;
        for p =i+1:n;
            acum=acum + AB(i,p).* X(p,p);
        end
        X(i,i) = (AB(i,n+1)-acum)/AB(i,i);
    end
   
end
    
  
    
       
       