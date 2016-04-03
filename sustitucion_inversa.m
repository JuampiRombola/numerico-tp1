function [x] = sustitucion_inversa(A)
#Sustitucion inversa para hallar la solucion de una matriz extendida
	n = rows(A);
	x = zeros(n, 1);
	for k=n:-1:1
		x(k) = (A(k,n+1) - A(k, k+1:n) * x(k+1:n)) / A(k, k);
	endfor
endfunction