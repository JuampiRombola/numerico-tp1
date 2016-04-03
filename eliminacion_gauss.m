function [A] = eliminacion_gauss(A)
#Eliminacion de Gauss Jordan con pivoteo parcial dada una matriz extendida
	m = rows(A);
	n = columns(A);
	
	for k=1:(min(m,n)-1)
		[valor_max indice_max] = max(A(k:end,k));
		indice_max += k-1;
		if (valor_max == 0)
			error ("Error, la matriz es singular");
		endif
		A([k indice_max],:) = A([indice_max k],:);
			
		for i=(k+1):m
			mult = A(i, k) / A(k, k);
			
			for j=(k+1):n
				A(i, j) = A(i, j) - A(k, j) * mult;
			endfor
			A(i, k) = 0;
		endfor
	endfor
endfunction