function [x] = metodo_gauss(A, b)
# Metodo directo de Gauss para hallar la 
# solucion de un SEL. Recibe una matriz A y b.
	A = eliminacion_gauss([A, b]);
	x = sustitucion_inversa(A);
endfunction