%3) Obter o valor medio de uma lista de inteiros

%conta o numero de iteracoes ate acabar a lista
nelemento([_|T],N):- nelemento(T,Resto),N is 1+Resto. %chama a funcao recursivamente incrementando
nelemento([],0).

%realiza a soma dos elementos
somatorio([H|T],Soma):- somatorio(T,Somaparcial),Soma is H+Somaparcial.
somatorio([],0).

medio([],0).
%medio([1],1).
medio(H,M):- nelemento(H,N),somatorio(H,Soma),M is Soma/N.