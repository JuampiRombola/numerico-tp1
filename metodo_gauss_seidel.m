function [x] = metodo_gauss_seidel(A, b, x0, tolerancia)
# Metodo iterativo de G-S para hallar la 
# solucion de un SEL. Recibe una matriz A, b,
# x0 y la tolerancia.
	n = length(b);
	x = x0;
	convergencia = inf;
	k = 1;
	
	while (convergencia > tolerancia)
		x0 = x;
		for i=1:n
			sumatoria = 0;
			for j=1:n
				if (j != i)
					sumatoria += A(i,j) * x(j);
				endif
			endfor
			x(i) = (b(i) - sumatoria) / A(i, i);
		endfor
		convergencia = max(abs(x - x0));
		k++;
		if (k > 1000)
			error('Error de convergencia');
		endif
	endwhile
endfunction