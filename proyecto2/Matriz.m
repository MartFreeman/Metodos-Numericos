function [ A n b iteraciones tolerancia vector_inicial factor_de_relajacion] = Matriz
A= [2 1 -1; -3 -1 2; -2 1 2];
b = [8 -11 -3]' ;
      iteraciones = 1000;
      tolerancia = 1* 10^-7;
      vector_inicial = [1 3 4 5 4];
      factor_de_relajacion = 1;
n = size(A);
n = n(1);
 end
