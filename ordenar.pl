%15) ordenar uma lista de inteiros

%ordena a lista
ordenar([],[_]).
ordenar(T1,[X2|L]):- nelementos(T1,E), E >= 2 ->  M = X2, menorelemento(T1, M), remover(M, T1, L1), ordenar(L1, L); otherwise-> M = X2, menorelemento(T1, M), remover(M, T1, L1),ordenar(L1, [X2|L]).

%pega o menor numero da lista e salva em M
menorelemento([X],X). 
menorelemento([H|T],M):- menorelemento(T, N), (   N > H -> M = H; M = N).

%remove o menor elemento da lista e armazena o restante
remover(X, [X|T], T).
remover(X, [Y|T], [Y|NT]) :- X \== Y, remover(X, T, NT).

nelementos([_|T],N):- nelementos(T,Resto),N is 1+Resto.
nelementos([],0).