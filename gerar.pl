%7) Gerar uma lista com os n elementos de uma faixa

gerar(H,H,[H]).
gerar(H, X, [H|T]) :- H =\= X -> V is H+1, gerar(V, X,T); H > X -> !, otherwise -> gerar(H,X,T).