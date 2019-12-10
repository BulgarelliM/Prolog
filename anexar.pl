%11) Anexar uma lista em outra

anexar([],[],[_]).
anexar([H1|T1], T2, [H1|T]) :- anexar(T1, T2, T).
anexar([],[H2|T2], [H2|T]):- nelementos([H2|T2], N), N >= 2 ->  anexar([], T2, T); anexar([],[],[H2|T]).

nelementos([_|T],N):- nelementos(T,Resto),N is 1+Resto.
nelementos([],0).