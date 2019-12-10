%definicoes
nelementos([_|T],N):- nelementos(T,Resto),N is 1+Resto.    %chama a funcao recursivamente incrementando
nelementos([],0).


%?- nelementos([1,2,3],S).